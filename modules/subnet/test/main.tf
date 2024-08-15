provider "aws" {
  region = "eu-west-2"
}

module "subnet" {
  source = "../src"

  environment = "bar"
  identifier  = "baz"
  region      = "eu-west-2"

  accessibility     = "foo"
  availability_zone = 2
  cidr_block        = "foobar"
  vpc_id            = "id"

  tags = {
    Foo = "Bar"
  }
}
