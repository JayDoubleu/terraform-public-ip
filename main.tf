data "external" "public_ip" {
  program = ["python", "-c", "import json,requests;print(json.dumps({\"ip\":requests.get('http://whatismyip.akamai.com/').content}))"]
}

output "public_ip" {
  value = "${data.external.public_ip.result.ip}"
}
