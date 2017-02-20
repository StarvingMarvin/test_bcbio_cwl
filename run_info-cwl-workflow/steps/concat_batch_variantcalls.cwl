arguments:
- position: 0
  valueFrom: sentinel-runtime='$(runtime)'
baseCommand:
- bcbio_nextgen.py
- runfn
- concat_batch_variantcalls
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 2
  ramMin: 4096
inputs:
- default: batch-merge
  id: sentinel-parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel-parallel=
    separate: false
  type: string
- default: "'[\"vrn_file\"]'"
  id: sentinel-outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel-outputs=
    separate: false
  type: string
- id: description
  type:
    inputBinding:
      itemSeparator: ;;
      position: 2
      prefix: description=
      separate: false
    items: string
    type: array
- id: config__algorithm__validate
  type:
    inputBinding:
      itemSeparator: ;;
      position: 3
      prefix: config__algorithm__validate=
      separate: false
    items: File
    type: array
- id: reference__fasta__base
  type:
    inputBinding:
      itemSeparator: ;;
      position: 4
      prefix: reference__fasta__base=
      separate: false
    items: File
    type: array
- id: reference__rtg
  type:
    inputBinding:
      itemSeparator: ;;
      position: 5
      prefix: reference__rtg=
      separate: false
    items: File
    type: array
- id: config__algorithm__variantcaller
  type:
    inputBinding:
      itemSeparator: ;;
      position: 6
      prefix: config__algorithm__variantcaller=
      separate: false
    items: string
    type: array
- id: config__algorithm__coverage_interval
  type:
    inputBinding:
      itemSeparator: ;;
      position: 7
      prefix: config__algorithm__coverage_interval=
      separate: false
    items: string
    type: array
- id: metadata__batch
  type:
    inputBinding:
      itemSeparator: ;;
      position: 8
      prefix: metadata__batch=
      separate: false
    items: string
    type: array
- id: metadata__phenotype
  type:
    inputBinding:
      itemSeparator: ;;
      position: 9
      prefix: metadata__phenotype=
      separate: false
    items: string
    type: array
- id: reference__genome_context
  type:
    inputBinding:
      itemSeparator: ;;
      position: 10
      prefix: reference__genome_context=
      separate: false
    items:
      items: File
      type: array
    type: array
- id: config__algorithm__validate_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 11
      prefix: config__algorithm__validate_regions=
      separate: false
    items: File
    type: array
- id: genome_build
  type:
    inputBinding:
      itemSeparator: ;;
      position: 12
      prefix: genome_build=
      separate: false
    items: string
    type: array
- id: config__algorithm__tools_off
  type:
    inputBinding:
      itemSeparator: ;;
      position: 13
      prefix: config__algorithm__tools_off=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: genome_resources__variation__dbsnp
  type:
    inputBinding:
      itemSeparator: ;;
      position: 14
      prefix: genome_resources__variation__dbsnp=
      separate: false
    items: File
    type: array
- id: genome_resources__variation__cosmic
  type:
    inputBinding:
      itemSeparator: ;;
      position: 15
      prefix: genome_resources__variation__cosmic=
      separate: false
    items: File
    type: array
- id: analysis
  type:
    inputBinding:
      itemSeparator: ;;
      position: 16
      prefix: analysis=
      separate: false
    items: string
    type: array
- id: config__algorithm__tools_on
  type:
    inputBinding:
      itemSeparator: ;;
      position: 17
      prefix: config__algorithm__tools_on=
      separate: false
    items:
      items: string
      type: array
    type: array
- id: config__algorithm__variant_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 18
      prefix: config__algorithm__variant_regions=
      separate: false
    items: File
    type: array
- id: align_bam
  type:
    inputBinding:
      itemSeparator: ;;
      position: 19
      prefix: align_bam=
      separate: false
    items: File
    type: array
- id: regions__callable
  type:
    inputBinding:
      itemSeparator: ;;
      position: 20
      prefix: regions__callable=
      separate: false
    items: File
    type: array
- id: config__algorithm__callable_regions
  type:
    inputBinding:
      itemSeparator: ;;
      position: 21
      prefix: config__algorithm__callable_regions=
      separate: false
    items: File
    type: array
- id: region
  type:
    inputBinding:
      itemSeparator: ;;
      position: 22
      prefix: region=
      separate: false
    items: string
    type: array
- id: vrn_file_region
  secondaryFiles:
  - .tbi
  type:
    inputBinding:
      itemSeparator: ;;
      position: 23
      prefix: vrn_file_region=
      separate: false
    items: File
    type: array
outputs:
- id: vrn_file
  secondaryFiles:
  - .tbi
  type: File
