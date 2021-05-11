# gate_detection
# requirement: pytorch 3.7

Computation completed on the cloud

add VOCform.ipynb to WashingtonOBRace to rename data set into Pascal Voc form

Unzip Segmentation.zip containing train.txt, val.txt, tarinval.txt

Create a VOC form dataset contains JPEGImages, SegmentationClass, ImageSets folders

FCN.ipynb, main detection algorithm, outputs: detection result images, MIoU values, time spent on trainng/validation

OplusD.m to create orange-labeled images by pixel addition between original images and predicted dectection images
ROC_curve.ipynb to generate ROC curves based on pixel comparison (for one kind of parameter setting)
Run ROC_curve.ipynb for each parameter setting and record the x, y data from ROC_curve.ipynb
Plot the ROC curves under different parameter settings in one comparison figure by matlab

eachimage.m to plot the comparison figure of time spent on each image under different parameter settings
