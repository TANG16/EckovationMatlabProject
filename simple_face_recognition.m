i=imread('1.png');
[hog_2x2, vis2x2] = extractHOGFeatures(i,'CellSize',[5 5]);
[hog_2x2, vis2x3] = extractHOGFeatures(i,'BlockSize',[5 5]);
%[hog_2x2, vis2x4] = extractHOGFeatures(i,'BlockOverlap',[2 4]);
[hog_2x2, vis2x5] = extractHOGFeatures(i,'NumBins',5);
[hog_2x2, vis2x6] = extractHOGFeatures(i,'UseSignedOrientation',5);
corners   = detectFASTFeatures(i);
     strongest = selectStrongest(corners, 3);
     [hog2, validPoints, ptVis] = extractHOGFeatures(i, strongest);
     figure;
     imshow(i); hold on;
     plot(ptVis, 'Color','green');

%subplot(221),plot(vis2x2),subplot(222),plot(vis2x3),subplot(223),plot(vis2x5);
%subplot(224),plot(vis2x6);
i2=imread('3.png');
