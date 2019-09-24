mkdir -p dnn_models/detection
cd dnn_models/detection
wget http://download.tensorflow.org/models/object_detection/ssd_mobilenet_v2_coco_2018_03_29.tar.gz
tar xvzf ssd_mobilenet_v2_coco_2018_03_29.tar.gz
mv ssd_mobilenet_v2_coco_2018_03_29/frozen_inference_graph.pb ssd_mobilenet_v2_coco_2018_03_29.pb
wget https://raw.githubusercontent.com/opencv/opencv_extra/master/testdata/dnn/ssd_mobilenet_v2_coco_2018_03_29.pbtxt
rm ssd_mobilenet_v2_coco_2018_03_29.tar.gz

cd -
mkdir -p dnn_models/estimation
cd dnn_models/estimation
wget http://dlib.net/files/shape_predictor_68_face_landmarks.dat.bz2
bzip2 -d shape_predictor_68_face_landmarks.dat.bz2
rm shape_predictor_68_face_landmarks.dat.bz2

cd -
mkdir dnn_models/features
cd dnn_models/features
wget https://storage.cmusatyalab.org/openface-models/nn4.small2.v1.t7
