# Deploy On AWS

This is based upon the [Pantheon Azure tutorial](https://docs.pantheon.pegasys.tech/en/latest/Tutorials/Azure/Azure-Private-Network-Quickstart) which should be read in parallel with these minimal set of instructions.

## Changes to adapt to Amazon AWS

(*from the AWS EC2 dashboard*)

- pick the Ubuntu 18.04 LTS image from the marketplace
- start it on a `t2.large` instance (2 vCPUS, 8GB RAM)
- [custom install script](./install_and_run.sh) passed as `user data` according to: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html
  - slightly modified from [Azure's original](../azure/install_and_run.sh) to force username to `ubuntu`
- provide pub key on Launch to be able to `ssh ubuntu@VM-IP`

