arguments:
- position: 0
  valueFrom: sentinel-runtime='$(runtime)'
baseCommand:
- bcbio_nextgen.py
- runfn
- merge_split_alignments
- cwl
class: CommandLineTool
cwlVersion: v1.0
hints:
- class: ResourceRequirement
  coresMin: 2
  ramMin: 4096
  tmpdirMin: 9
inputs:
- default: single-merge
  id: sentinel-parallel
  inputBinding:
    itemSeparator: ;;
    position: 0
    prefix: sentinel-parallel=
    separate: false
  type: string
- default: "'[\"align_bam\",\"work_bam_plus__disc\",\"work_bam_plus__sr\",\"hla__fastq\"]'"
  id: sentinel-outputs
  inputBinding:
    itemSeparator: ;;
    position: 1
    prefix: sentinel-outputs=
    separate: false
  type: string
- id: work_bam
  inputBinding:
    itemSeparator: ;;
    position: 2
    prefix: work_bam=
    separate: false
  type:
    items: File
    type: array
- id: align_bam
  inputBinding:
    itemSeparator: ;;
    position: 3
    prefix: align_bam=
    separate: false
  type:
    items: File
    type: array
- id: work_bam_plus__disc
  inputBinding:
    itemSeparator: ;;
    position: 4
    prefix: work_bam_plus__disc=
    separate: false
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: work_bam_plus__sr
  inputBinding:
    itemSeparator: ;;
    position: 5
    prefix: work_bam_plus__sr=
    separate: false
  secondaryFiles:
  - .bai
  type:
    items:
    - File
    - 'null'
    type: array
- id: hla__fastq
  inputBinding:
    itemSeparator: ;;
    position: 6
    prefix: hla__fastq=
    separate: false
  type:
    items:
    - File
    - 'null'
    type: array
- id: description
  inputBinding:
    itemSeparator: ;;
    position: 7
    prefix: description=
    separate: false
  type: string
outputs:
- id: align_bam
  secondaryFiles:
  - .bai
  type: File
- id: work_bam_plus__disc
  secondaryFiles:
  - .bai
  type:
  - File
  - 'null'
- id: work_bam_plus__sr
  secondaryFiles:
  - .bai
  type:
  - File
  - 'null'
- id: hla__fastq
  type:
  - File
  - 'null'
