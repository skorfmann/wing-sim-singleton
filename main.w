bring cloud;
bring expect;
bring "constructs" as constructs;
bring "./iparameter.w" as i;

class Dummy {}

pub class Parameter impl i.IParameter {
  extern "./parameter.sim.ts" static toResource(o: constructs.IConstruct?): constructs.Construct;

  state: cloud.Bucket;
  key: str;

  init(props: i.ParameterProps) {        
    this.state = this.getOrCreateBucket();
    this.key = "/config/${props.name}";        
    this.state.addObject(this.key, props.value);    
  }

  getOrCreateBucket(): cloud.Bucket {
    let singletonKey = "WingParamaterBucket";
    let root = std.Node.of(this).root;
    let existing = root.node.defaultChild?.node?.tryFindChild(singletonKey);
    if existing? {
      return unsafeCast(existing);
    } else {
      return new cloud.Bucket() as singletonKey in Parameter.toResource(root.node.defaultChild);
    }
  }

  pub inflight get(): str {
    return this.state.get(this.key);
  }    
}

let param = new Parameter({
  name: "foo",
  value: "bar"
});

new Parameter({
  name: "baz",
  value: "bar"
}) as "other";

test "boom" {
  expect.equal(param.get(), "bar");
}