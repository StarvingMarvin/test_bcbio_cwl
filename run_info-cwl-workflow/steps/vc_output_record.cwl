arguments:
- position: 0
  valueFrom: sentinel-runtime='$(runtime)'
baseCommand:
- bcbio_nextgen.py
- runfn
- vc_output_record
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 2
  ramMin: 4096
inputs:
- default: batch-single
  id: sentinel-parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel-parallel=
    separate: false
  type: string
- default: "'[\"vc_rec\"]'"
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
- id: vrn_file
  inputBinding:
    itemSeparator: ;;
    position: 22
    prefix: vrn_file=
    separate: false
  secondaryFiles:
  - .tbi
  type: File
- id: validate__summary
  inputBinding:
    itemSeparator: ;;
    position: 23
    prefix: validate__summary=
    separate: false
  type:
  - File
  - 'null'
- id: validate__tp
  inputBinding:
    itemSeparator: ;;
    position: 24
    prefix: validate__tp=
    separate: false
  secondaryFiles:
  - .tbi
  type:
  - File
  - 'null'
- id: validate__fp
  inputBinding:
    itemSeparator: ;;
    position: 25
    prefix: validate__fp=
    separate: false
  secondaryFiles:
  - .tbi
  type:
  - File
  - 'null'
- id: validate__fn
  inputBinding:
    itemSeparator: ;;
    position: 26
    prefix: validate__fn=
    separate: false
  secondaryFiles:
  - .tbi
  type:
  - File
  - 'null'
outputs:
- id: vc_rec
  type:
    fields:
    - name: description
      type:
        items: string
        type: array
    - name: vrn_file
      type:
        items: File
        type: array
    - name: config__algorithm__validate
      type:
        items: File
        type: array
    - name: reference__fasta__base
      type:
        items: File
        type: array
    - name: reference__rtg
      type:
        items: File
        type: array
    - name: config__algorithm__variantcaller
      type:
        items: string
        type: array
    - name: config__algorithm__coverage_interval
      type:
        items: string
        type: array
    - name: metadata__batch
      type:
        items: string
        type: array
    - name: metadata__phenotype
      type:
        items: string
        type: array
    - name: reference__genome_context
      type:
        items:
          items: File
          type: array
        type: array
    - name: config__algorithm__validate_regions
      type:
        items: File
        type: array
    - name: genome_build
      type:
        items: string
        type: array
    - name: config__algorithm__tools_off
      type:
        items:
          items: string
          type: array
        type: array
    - name: genome_resources__variation__dbsnp
      type:
        items: File
        type: array
    - name: genome_resources__variation__cosmic
      type:
        items: File
        type: array
    - name: analysis
      type:
        items: string
        type: array
    - name: config__algorithm__tools_on
      type:
        items:
          items: string
          type: array
        type: array
    - name: config__algorithm__variant_regions
      type:
        items: File
        type: array
    - name: align_bam
      type:
        items: File
        type: array
    - name: regions__callable
      type:
        items: File
        type: array
    - name: config__algorithm__callable_regions
      type:
        items: File
        type: array
    - name: validate__summary
      type:
        items:
        - File
        - 'null'
        type: array
    - name: validate__tp
      type:
        items:
        - File
        - 'null'
        type: array
    - name: validate__fp
      type:
        items:
        - File
        - 'null'
        type: array
    - name: validate__fn
      type:
        items:
        - File
        - 'null'
        type: array
    name: vc_rec
    type: record
