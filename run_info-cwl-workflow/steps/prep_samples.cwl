arguments:
- position: 0
  valueFrom: sentinel-runtime='$(runtime)'
baseCommand:
- bcbio_nextgen.py
- runfn
- prep_samples
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 2
  ramMin: 4096
inputs:
- default: multi-parallel
  id: sentinel-parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel-parallel=
    separate: false
  type: string
- default: "'[\"config__algorithm__variant_regions\",\"config__algorithm__variant_regions_merged\",\"config__algorithm__variant_regions_orig\",\"config__algorithm__coverage\",\"config__algorithm__coverage_merged\",\"config__algorithm__coverage_orig\",\"config__algorithm__seq2c_bed_ready\"]'"
  id: sentinel-outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel-outputs=
    separate: false
  type: string
- id: config__algorithm__coverage
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: config__algorithm__coverage=
    separate: false
  type:
  - File
  - 'null'
- id: config__algorithm__variant_regions
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: config__algorithm__variant_regions=
    separate: false
  type: File
- id: reference__fasta__base
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: reference__fasta__base=
    separate: false
  type: File
- id: description
  inputBinding:
    itemSeparator: ;;
    position: 5
    prefix: description=
    separate: false
  type: string
outputs:
- id: config__algorithm__variant_regions
  type: File
- id: config__algorithm__variant_regions_merged
  type:
  - File
  - 'null'
- id: config__algorithm__variant_regions_orig
  type:
  - File
  - 'null'
- id: config__algorithm__coverage
  type:
  - File
  - 'null'
- id: config__algorithm__coverage_merged
  type:
  - File
  - 'null'
- id: config__algorithm__coverage_orig
  type:
  - File
  - 'null'
- id: config__algorithm__seq2c_bed_ready
  type:
  - File
  - 'null'
