multipass launch --name gateway \
  --cpus 1 \
  --mem 512M \
  --disk 3G \
  --network virbr0 \
  --cloud-init ./vm.cloud-init.yaml

multipass mount app gateway:app

