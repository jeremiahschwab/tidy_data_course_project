### Study Design	
Data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip on 6/19/15	
All normalized values that are unitless

### How the data was collected (from the README.txt):
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

	
### Code Book	
	
**Subject:**	Volunteer number

**Activity:**	Activity the volunteer performed

**TimeBodyAccelerationMean-X:**	Average of the average body time domain signal of the X axis of the accelerometer

**TimeBodyAccelerationMean-Y:**	Average of the average body time domain signal of the Y axis of the accelerometer

**TimeBodyAccelerationMean-Z:**	Average of the average body time domain signal of the Z axis of the accelerometer

**TimeGravityAccelerationMean-X:**	Average of the average gravity time domain signal of the X axis of the accelerometer

**TimeGravityAccelerationMean-Y:**	Average of the average gravity time domain signal of the Y axis of the accelerometer

**TimeGravityAccelerationMean-Z:**	Average of the average gravity time domain signal of the Z axis of the accelerometer

**TimeBodyAccelerationJerkMean-X:**	Average of the average body time domain signal of the linear acceleration and angular velocity of the X axis of the accelerometer

**TimeBodyAccelerationJerkMean-Y:**	Average of the average body time domain signal of the linear acceleration and angular velocity of the Y axis of the accelerometer

**TimeBodyAccelerationJerkMean-Z:**	Average of the average body time domain signal of the linear acceleration and angular velocity of the Z axis of the accelerometer

**TimeBodyGyroscopeMean-X:**	Average of the average body time domain signal of the X axis of the gyroscope

**TimeBodyGyroscopeMean-Y:**	Average of the average body time domain signal of the Y axis of the gyroscope

**TimeBodyGyroscopeMean-Z:**	Average of the average body time domain signal of the Z axis of the gyroscope

**TimeBodyGyroscopeJerkMean-X:**	Average of the average body time domain signal of the linear acceleration and angular velocity of the X axis of the gyroscope

**TimeBodyGyroscopeJerkMean-Y:**	Average of the average body time domain signal of the linear acceleration and angular velocity of the Y axis of the gyroscope

**TimeBodyGyroscopeJerkMean-Z:**	Average of the average body time domain signal of the linear acceleration and angular velocity of the Z axis of the gyroscope

**TimeBodyAccelerationMagnitudeMean:**	Average of the average magnitude of the body time domain signal of the accelerometer

**TimeGravityAccelerationMagnitudeMean:**	Average of the average magnitude of the gravity time domain signal of the accelerometer

**TimeBodyAccelerationJerkMagnitudeMean:**	Average of the average magnitude of the body time domain signal of the linear acceleration and angular velocity of the accelerometer

**TimeBodyGyroscopeMagnitudeMean:**	Average of the average magnitude of the body time domain signal of the gyroscope

**TimeBodyGyroscopeJerkMagnitudeMean:**	Average of the average magnitude of the body time domain signal of the linear acceleration and angular velocity of the gyroscope

**FrequencyBodyAccelerationMean-X:**	Average of the average body frequency domain signal of the X axis of the accelerometer

**FrequencyBodyAccelerationMean-Y:**	Average of the average body frequency domain signal of the Y axis of the accelerometer

**FrequencyBodyAccelerationMean-Z:**	Average of the average body frequency domain signal of the Z axis of the accelerometer

**FrequencyBodyAccelerationJerkMean-X:**	Average of the average body frequency domain signal of the linear acceleration and angular velocity of the X axis of the accelerometer

**FrequencyBodyAccelerationJerkMean-Y:**	Average of the average body frequency domain signal of the linear acceleration and angular velocity of the Y axis of the accelerometer

**FrequencyBodyAccelerationJerkMean-Z:**	Average of the average body frequency domain signal of the linear acceleration and angular velocity of the Z axis of the accelerometer

**FrequencyBodyGyroscopeMean-X:**	Average of the average body frequency domain signal of the X axis of the gyroscope

**FrequencyBodyGyroscopeMean-Y:**	Average of the average body frequency domain signal of the Y axis of the gyroscope

**FrequencyBodyGyroscopeMean-Z:**	Average of the average body frequency domain signal of the Z axis of the gyroscope

**FrequencyBodyAccelerationMagnitudeMean:**	Average of the average magnitude of the body frequency domain signal of the accelerometer

**FrequencyBodyAccelerationJerkMagnitudeMean:**	Average of the average magnitude of the body frequency domain signal of the linear acceleration and angular velocity of the accelerometer

**FrequencyBodyGyroscopeMagnitudeMean:**	Average of the average magnitude of the body frequency domain signal of the gyroscope

**FrequencyBodyGyroscopeJerkMagnitudeMean:**	Average of the average magnitude of the body frequency domain signal of the linear acceleration and angular velocity of the gyroscope

**TimeBodyAccelerationSTD-X:**	Average of the standard deviation body time domain signal of the X axis of the accelerometer

**TimeBodyAccelerationSTD-Y:**	Average of the standard deviation body time domain signal of the Y axis of the accelerometer

**TimeBodyAccelerationSTD-Z:**	Average of the standard deviation body time domain signal of the Z axis of the accelerometer

**TimeGravityAccelerationSTD-X:**	Average of the standard deviation gravity time domain signal of the X axis of the accelerometer

**TimeGravityAccelerationSTD-Y:**	Average of the standard deviation gravity time domain signal of the Y axis of the accelerometer

**TimeGravityAccelerationSTD-Z:**	Average of the standard deviation gravity time domain signal of the Z axis of the accelerometer

**TimeBodyAccelerationJerkSTD-X:**	Average of the standard deviation body time domain signal of the linear acceleration and angular velocity of the X axis of the accelerometer

**TimeBodyAccelerationJerkSTD-Y:**	Average of the standard deviation body time domain signal of the linear acceleration and angular velocity of the Y axis of the accelerometer

**TimeBodyAccelerationJerkSTD-Z:**	Average of the standard deviation body time domain signal of the linear acceleration and angular velocity of the Z axis of the accelerometer

**TimeBodyGyroscopeSTD-X:**	Average of the standard deviation body time domain signal of the X axis of the gyroscope

**TimeBodyGyroscopeSTD-Y:**	Average of the standard deviation body time domain signal of the Y axis of the gyroscope

**TimeBodyGyroscopeSTD-Z:**	Average of the standard deviation body time domain signal of the Z axis of the gyroscope

**TimeBodyGyroscopeJerkSTD-X:**	Average of the standard deviation body time domain signal of the linear acceleration and angular velocity of the X axis of the gyroscope

**TimeBodyGyroscopeJerkSTD-Y:**	Average of the standard deviation body time domain signal of the linear acceleration and angular velocity of the Y axis of the gyroscope

**TimeBodyGyroscopeJerkSTD-Z:**	Average of the standard deviation body time domain signal of the linear acceleration and angular velocity of the Z axis of the gyroscope

**TimeBodyAccelerationMagnitudeSTD:**	Average of the standard deviation magnitude of the body time domain signal of the accelerometer

**TimeGravityAccelerationMagnitudeSTD:**	Average of the standard deviation magnitude of the gravity time domain signal of the accelerometer

**TimeBodyAccelerationJerkMagnitudeSTD:**	Average of the standard deviation magnitude of the body time domain signal of the linear acceleration and angular velocity of the accelerometer

**TimeBodyGyroscopeMagnitudeSTD:**	Average of the standard deviation magnitude of the body time domain signal of the gyroscope

**TimeBodyGyroscopeJerkMagnitudeSTD:**	Average of the standard deviation magnitude of the body time domain signal of the linear acceleration and angular velocity of the gyroscope

**FrequencyBodyAccelerationSTD-X:**	Average of the standard deviation body frequency domain signal of the X axis of the accelerometer

**FrequencyBodyAccelerationSTD-Y:**	Average of the standard deviation body frequency domain signal of the Y axis of the accelerometer

**FrequencyBodyAccelerationSTD-Z:**	Average of the standard deviation body frequency domain signal of the Z axis of the accelerometer

**FrequencyBodyAccelerationJerkSTD-X:**	Average of the standard deviation body frequency domain signal of the linear acceleration and angular velocity of the X axis of the accelerometer

**FrequencyBodyAccelerationJerkSTD-Y:**	Average of the standard deviation body frequency domain signal of the linear acceleration and angular velocity of the Y axis of the accelerometer

**FrequencyBodyAccelerationJerkSTD-Z:**	Average of the standard deviation body frequency domain signal of the linear acceleration and angular velocity of the Z axis of the accelerometer

**FrequencyBodyGyroscopeSTD-X:**	Average of the standard deviation body frequency domain signal of the X axis of the gyroscope

**FrequencyBodyGyroscopeSTD-Y:**	Average of the standard deviation body frequency domain signal of the Y axis of the gyroscope

**FrequencyBodyGyroscopeSTD-Z:**	Average of the standard deviation body frequency domain signal of the Z axis of the gyroscope

**FrequencyBodyAccelerationMagnitudeSTD:**	Average of the standard deviation magnitude of the body frequency domain signal of the accelerometer

**FrequencyBodyAccelerationJerkMagnitudeSTD:**	Average of the standard deviation magnitude of the body frequency domain signal of the linear acceleration and angular velocity of the accelerometer

**FrequencyBodyGyroscopeMagnitudeSTD:**	Average of the standard deviation magnitude of the body frequency domain signal of the gyroscope

**FrequencyBodyGyroscopeJerkMagnitudeSTD:**	Average of the standard deviation magnitude of the body frequency domain signal of the linear acceleration and angular velocity of the gyroscope