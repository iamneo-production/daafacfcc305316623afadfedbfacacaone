provider "aws" {
  region = "us-west-2" # Singapore region
  access_key = "AKIAQAR763YWL7SWVI4E"
  secret_key = "8Sol+b9B4VzKNRaukJATOUD2UnpcmPqNimW4OCkx"
}

resource "aws_instance" "example" {
  ami           = "ami-0f3769c8d8429942f" # Replace with the SUSE Linux AMI ID
  instance_type = "t2.micro"
}

output "public_ip" {
  value = aws_instance.example.public_ip
}