# DLP
Drug discovery is a long and costly process, and computational methods have the potential to accelerate the drug discovery process by analysis of bioassays or biomedical literature. There is evidence that miRNAs play an important role in disease development and can be considered as therapeutic targets. Therefore, the development of effective computational models to identify potential drug targets, like miRNAs, is urgently needed. In this study, a method based on subspace segmentation, called duplex link prediction (DLP), is proposed to identify potential miRNAs that can serve as drug targets. Specifically, we first use the network enhancement (NE) algorithm to update the similarity metric between miRNAs. Then, we obtain two matrices by pre-filling the association matrix from both drug and miRNA perspectives using the K nearest neighbors (KNN) method. After that, the DLP-base algorithm is used to predict the potential links in them. Finally, the final predicted association scores are obtained by the weighted average of the two matrices. Experimental results show that the DLP algorithm outperforms existing methods in the task of identifying miRNA as potential drug targets.  Moreover, the case study confirms that the proposed method is effective in practical applications.

# Requirements
* matlab 2018b

The code has been tested on the Windows platform.

# Dataset Description
* dataset.mat: Adjacency matrixes A; The integrated miRNA similarity SM; The integrated disease similarity SD;

# Functions Description
* ```demo.m```: this function can implement the DLP algorithm;

# Train and test folds

run ```demo.m```

All files of Data and Code should be stored in the same folder to run the model.
