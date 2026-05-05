## Why patches when we already have transformers?
- Resources inside the containers cannot be modified using transformers 
- Cannot modify the containerPort
- Cannot add env variables for containers 
- You cannot remove a field within the base manifests
- You cannot add volume mounts or change probes
- You cannot modify the nested fields 

## Types of patches
- patches (generic form)
- patchesJson6902 (deprecated)
- patchesStrategicMerge (deprecated)


