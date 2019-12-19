function output_value=load_database()
persistent loaded;
            persistent numeric_images;
            if(isempty(loaded))
                all_Images=zeros(10000,6);
                for i=1:6
                    disp(strcat('E:\Internship\Teach Matlab\face_recognition\faces\',num2str(i-1)));
                    cd(strcat('E:\Internship\Teach Matlab\face_recognition\faces\',num2str(i-1)));
                    for j=1:10
                        image_container=imread(strcat(num2str(j),'.pgm'));
                        all_Images(:,(i-1)*10+j)=reshape(image_container,size(image_container,1)*size(image_container,2),1);
                    end
                    disp('Loading Database');
                    cd ..
                end
                numeric_images=uint8(all_Images);
            end
            loaded=1;
            output_value=numeric_images;
