# kubeplugin

## description

This bash script retrieves and formats resource usage statisticds for K8S resources like nodes and podes.

## usage

```bash
./resource-usage.sh <namespace> <kubectl-subcommand> <resource-type>
```

## parameters

- ```<namespace>```: K8S namespace
- ```<kubectl-subcommand>```: kubectl command to run (for example top)
- ```<resource-type>```: K8S resource (pod / node)

## example

![](/imgs/kubeplugin.gif)

