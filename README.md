# Music Note Recognition

The process of optical music recognition, converting a music sheet into notes and pitches in a digital representation, resembles the process of optical character recognition. It involves a lot of steps from the broad spectrum of image processing. Optical music recognition includes the steps from pre-processing the input image, to classifying extracted musical features into the output that is a string representation of the notes.

## Input

![alt tag](https://raw.githubusercontent.com/suyalcinkaya/music-note-recognition/master/input_images/im1s.JPG)

## Output

```
DDCBBAGGFEDDnDEDDAFEDGBDnDCBBAGGFEDDnCBABAGAEFG
```

## Performance

<table>
  <tr>
    <td>Images</td>
    <td>ref/out</td>
    <td>Label</td>
    <td>Fail count</td>
    <td>Fail rate</td>
  </tr>
  <tr>
    <td rowspan="2">im1s.jps</td>
    <td colspan="1">ref</td>
    <td colspan="1">DDCBBAGGFEDDnDEDDAFEDGBDnDCBBAGGFEDDnCBABAGAEFG</td>
    <td rowspan="2">0</td>
    <td rowspan="2">0%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">DDCBBAGGFEDDnDEDDAFEDGBDnDCBBAGGFEDDnCBABAGAEFG</td>
  </tr>
  
  <tr>
    <td rowspan="2">im2s.jps</td>
    <td colspan="1">ref</td>
    <td colspan="1">AAFABAFFEFEnAAFABAFEFEnDDFABBDBnAAFABAFEFE</td>
    <td rowspan="2">3</td>
    <td rowspan="2">7%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">AAFABAFFEFEnAAFABAFEFEnCDFABBDBnGGFABAFEFE</td>
  </tr>
  
   <tr>
    <td rowspan="2">im3s.jps</td>
    <td colspan="1">ref</td>
    <td colspan="1">ACBADDDEBCnAAACBAGGFEDCBAnACBADDDEBCnAAACBAGDABG</td>
    <td rowspan="2">1</td>
    <td rowspan="2">2%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">ACBADDDEBCnDAAACBAGGFEDCBAnACBADDDEBCnAAACBAGDABG</td>
  </tr>
  
  <tr>
    <td rowspan="2">im4s.jps</td>
    <td colspan="1">ref</td>
    <td colspan="1">GGEEGGDDEFGABGGnGEEGGDDDCDEADGnEEDCCBBCDBAGCCnCAACCGGGACGDC</td>
    <td rowspan="2">1</td>
    <td rowspan="2">2%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">GGEEGGDDEFGABGGnGEEGGDDDCDEADGnEEDCCBBCDBAGCCnCAACCGGACGDC</td>
  </tr>
  
  <tr>
    <td rowspan="2">im5s.jps</td>
    <td colspan="1">ref</td>
    <td colspan="1">GGABGBADGGABGFnGGABCBAGFDEFGGnEFEDEFGDEDCDnEFEDEFGEDGFAGG</td>
    <td rowspan="2">1</td>
    <td rowspan="2">2%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">GABGBADGGABGFnGGABCBAGFDEFGGnEFEDEFGDEDCDnDEFEDEFGEDGFAGG</td>
  </tr>
  
  <tr>
    <td rowspan="2">im6s.jps</td>
    <td colspan="1">ref</td>
    <td colspan="1">CCGGAAGFFEEDDCnGGFFEEDGGFFEEDnCCGGAAGFFEEDDC</td>
    <td rowspan="2">1</td>
    <td rowspan="2">2%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">CCGGAAGFFEEDCnGGFFEEDGGFFEEDnCCGGAAGFFEEDDC</td>
  </tr>
  
  <tr>
    <td rowspan="3">Result</td>
    <td colspan="1"></td>
    <td colspan="1"></td>
    <td colspan="1">Total fail count</td>
    <td colspan="1">Success rate</td>
  </tr>
  
  <tr>
    <td colspan="1"></td>
    <td colspan="1"></td>
    <td colspan="1">7</td>
    <td colspan="1">97,7%</td>
  </tr>
  
</table>
