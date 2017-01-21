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
    <td rowspan="2">im1s.jpg</td>
    <td colspan="1">ref</td>
    <td colspan="1">DDCBBAGGFEDDn <br/> DEDDAFEDGBDn <br/> DCBBAGGFEDDn <br/> CBABAGAEFG</td>
    <td rowspan="2">0</td>
    <td rowspan="2">0%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">DDCBBAGGFEDDn <br/> DEDDAFEDGBDn <br/> DCBBAGGFEDDn <br/> CBABAGAEFG</td>
  </tr>
  
  <tr>
    <td rowspan="2">im2s.jpg</td>
    <td colspan="1">ref</td>
    <td colspan="1">AAFABAFFEFEn <br/> AAFABAFEFEn <br/> DDFABBDBn <br/> AAFABAFEFE</td>
    <td rowspan="2">3</td>
    <td rowspan="2">7%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">AAFABAFFEFEn <br/> AAFABAFEFEn <br/> <b>C</b>DFABBDBn <br/> <b>GG</b>FABAFEFE</td>
  </tr>
  
   <tr>
    <td rowspan="2">im3s.jpg</td>
    <td colspan="1">ref</td>
    <td colspan="1">ACBADDDEBCn <br/> AAACBAGGFEDCBAn <br/> ACBADDDEBCn <br/> AAACBAGDABG</td>
    <td rowspan="2">1</td>
    <td rowspan="2">2%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">ACBADDDEBCn <br/> <b>D</b>AAACBAGGFEDCBAn <br/> ACBADDDEBCn <br/> AAACBAGDABG</td>
  </tr>
  
  <tr>
    <td rowspan="2">im4s.jpg</td>
    <td colspan="1">ref</td>
    <td colspan="1">GGEEGGDDEFGABGGn <br/> GEEGGDDDCDEADGn <br/> EEDCCBBCDBAGCCn <br/> CAACCGGGACGDC</td>
    <td rowspan="2">1</td>
    <td rowspan="2">2%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">GGEEGGDDEFGABGGn <br/> GEEGGDDDCDEADGn <br/> EEDCCBBCDBAGCCn <br/> CAACCGG<b>A</b>CGDC</td>
  </tr>
  
  <tr>
    <td rowspan="2">im5s.jpg</td>
    <td colspan="1">ref</td>
    <td colspan="1">GGABGBADGGABGFn <br/> GGABCBAGFDEFGGn <br/> EFEDEFGDEDCDn <br/> EFEDEFGEDGFAGG</td>
    <td rowspan="2">1</td>
    <td rowspan="2">2%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">GABGBADGGABGFn <br/> GGABCBAGFDEFGGn <br/> EFEDEFGDEDCDn <br/> DEFEDEFGEDGFAGG</td>
  </tr>
  
  <tr>
    <td rowspan="2">im6s.jpg</td>
    <td colspan="1">ref</td>
    <td colspan="1">CCGGAAGFFEEDDCn <br/> GGFFEEDGGFFEEDn <br/> CCGGAAGFFEEDDC</td>
    <td rowspan="2">1</td>
    <td rowspan="2">2%</td>
  </tr>
  <tr>
    <td colspan="1">out</td>
    <td colspan="1">CCGGAAGFFEEDCn <br/> GGFFEEDGGFFEEDn <br/> CCGGAAGFFEEDDC</td>
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
