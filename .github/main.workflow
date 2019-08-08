workflow "sync other workflows" {
  on = "schedule(*/15 * * * *)"
  resolves = ["sync main.workflow"]
}

action "sync main.workflow" {
  uses = "actions/bin/sh@master"
  args = ["./scripts/sync_ghactions.sh"]
}
