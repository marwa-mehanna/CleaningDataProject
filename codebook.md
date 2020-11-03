This is the code book for the Tidy Dataset obtained by 'run_analysis.R'
The data set was obtained from the Human Activity Recognition Using Smartphones Data Set.
The cleaned dataset shows different measurements of [30 subjects] performing six activities[WALKING’, ‘WALKING_UPSTAIRS’, ‘WALKING_DOWNSTAIRS’, ‘SITTING’, ‘STANDING’, ‘LAYING’]

The data set has 180 observation of 81 variables which are as follows
1. Subject : 30 participants for the experiment
2. Activity : 6 types of activities [WALKING’, ‘WALKING_UPSTAIRS’, ‘WALKING_DOWNSTAIRS’, ‘SITTING’, ‘STANDING’, ‘LAYING’] performed by each subject

The following variables are Mean and standard deviation measurements for Triaxial(X,Y,Z) acceleration from the accelerometer (total acceleration) 
/the estimated body acceleration/Triaxial Angular velocity from the gyroscope with valid values [-1,1]

3 variables(X/Y/Z) for TimeOfBodyAccMeanX"/"TimeOfBodyAccMeanY"/"TimeOfBodyAccMeanZ" -> Mean Value of the Body accelerometer Signals in time domain 
- 3 variables(X/Y/Z) for "TimeOfBodyAccSTDX"/"TimeOfBodyAccSTDY"/"TimeOfBodyAccSTDZ" -> standard deviation Value of the Body accelerometer Signals in time domain                
- 3 variables(X/Y/Z) for "TimeOfGravityAccMeanX"/"TimeOfGravityAccMeanY"/"TimeOfGravityAccMeanZ"  -> Mean Value of the gravity accelerometer Signals in time domain
- 3 variables(X/Y/Z) for "TimeOfGravityAccSTDX"/"TimeOfGravityAccSTDY"/"TimeOfGravityAccSTDZ"  -> standard deviation Value of the gravity accelerometer Signals in time domain            
- 3 variables(X/Y/Z) for "TimeOfBodyAccJerkMeanX"/ "TimeOfBodyAccJerkMeanY"/"TimeOfBodyAccJerkMeanZ" -> Mean Value of the Body accelerometer Jerk Signals in time domain
- 3 variables(X/Y/Z) for "TimeOfBodyAccJerkSTDX"/"TimeOfBodyAccJerkSTDY"/"TimeOfBodyAccJerkSTDZ" -> standard deviation Value of the Body accelerometer Jerk Signals in time domain        
- 3 variables(X/Y/Z) for "TimeOfBodyGyroMeanX"/"TimeOfBodyGyroMeanY"/"TimeOfBodyGyroMeanZ" -> Mean Value ofthe Body Gyroscope Signals in time domain
- 3 variables(X/Y/Z) for "TimeOfBodyGyroSTDX"/"TimeOfBodyGyroSTDY"/"TimeOfBodyGyroSTDZ"-> standard deviation of the Body Gyroscope Signals in time domain            
- 3 variables(X/Y/Z) for "TimeOfBodyGyroJerkMeanX"/"TimeOfBodyGyroJerkMeanY"/"TimeOfBodyGyroJerkMeanZ"-> Mean Value ofthe Body Gyroscope Jerk Signals in time domain
- 3 variables(X/Y/Z) for "TimeOfBodyGyroJerkSTDX"/"TimeOfBodyGyroJerkSTDY"/ "TimeOfBodyGyroJerkSTDZ" -> standard deviation of the BodyGyroscope Jerk Signals in time domain          
- 1 variable for "TimeOfBodyAccMagMean"-> Mean Value ofthe Magnitude of Body accelerometer Signals
- 1 variable for "TimeOfBodyAccMagSTD"-> standard deviation Value ofthe Magnitude of Body accelerometer Signals
- 1 variable for  "TimeOfGravityAccMagMean" ->  Mean Value of the Magnitude of Gravity accelerometer Signals
- 1 variable for "TimeOfGravityAccMagSTD" ->  standard deviation of the Magnitude of Gravity accelerometer Signals
- 1 variable for "TimeOfBodyAccJerkMagMean" ->  Mean Value of the Magnitude of the Body Gyroscope Jerk Signals
- 1 variable for "TimeOfBodyAccJerkMagSTD"  -> standard deviation ofthe Magnitude of Body Gyroscope Jerk Signals       
- 1 variable for "TimeOfBodyGyroMagMean" -> Mean Value of the Magnitude of Gyroscope Signals
- 1 variable for "TimeOfBodyGyroMagSTD"-> standard deviation ofthe Magnitude of Gyroscope Signals
- 1 variable for TimeOfBodyGyroJerkMagMean" -> Mean Value ofthe Body Gyroscope Jerk Signals 
- 1 variable for "TimeOfBodyGyroJerkMagSTD" -> standard deviation of the BodyGyroscope Jerk Signals       
-3 variables(X/Y/Z) for FreqOfBodyAccMeanX"/"FreqOfBodyAccMeanY"/"FreqOfBodyAccMeanZ" -> Mean Value of the Body accelerometer Signals in frequency domain
- 3 variables(X/Y/Z) for "FreqOfBodyAccSTDX"/"FreqOfBodyAccSTDY"/"FreqOfBodyAccSTDZ" -> standard deviation Value of the Body accelerometer Signals in frequency domain               
- 3 variables(X/Y/Z) for "FreqOfGravityAccMeanX"/"FreqOfGravityAccMeanY"/"FreqOfGravityAccMeanZ"  -> Mean Value of the gravity accelerometer Signals in frequency domain domain
- 3 variables(X/Y/Z) for "FreqOfGravityAccSTDX"/"FreqOfGravityAccSTDY"/"FreqOfGravityAccSTDZ"  -> standard deviation Value of the gravity accelerometer Signals in frequency domain           
- 3 variables(X/Y/Z) for "FreqOfBodyAccJerkMeanX"/ "FreqOfBodyAccJerkMeanY"/"FreqOfBodyAccJerkMeanZ" -> Mean Value of the Body accelerometer Jerk Signals in time domain
- 3 variables(X/Y/Z) for "FreqOfBodyAccJerkSTDX"/"FreqOfBodyAccJerkSTDY"/"FreqOfBodyAccJerkSTDZ" -> standard deviation Value of the Body accelerometer Jerk Signals in frequency domain       
- 3 variables(X/Y/Z) for "FreqOfBodyGyroMeanX"/"FreqOfBodyGyroMeanY"/"FreqOfBodyGyroMeanZ" -> Mean Value ofthe Body Gyroscope Signals in time domain
- 3 variables(X/Y/Z) for "FreqOfBodyGyroSTDX"/"FreqOfBodyGyroSTDY"/"FreqOfBodyGyroSTDZ"-> standard deviation of the Body Gyroscope Signals in frequency domain           
- 3 variables(X/Y/Z) for "FreqOfBodyGyroJerkMeanX"/"FreqOfBodyGyroJerkMeanY"/"FreqOfBodyGyroJerkMeanZ"-> Mean Value ofthe Body Gyroscope Jerk Signals in time domain
- 3 variables(X/Y/Z) for "FreqOfBodyGyroJerkSTDX"/"FreqOfBodyGyroJerkSTDY"/ "FreqOfBodyGyroJerkSTDZ" -> standard deviation of the BodyGyroscope Jerk Signals in frequency domain         
- 1 variable for "FreqOfBodyAccMagMean"-> Mean Value ofthe Magnitude of Body accelerometer Signals
- 1 variable for "FreqOfBodyAccMagSTD"-> standard deviation Value ofthe Magnitude of Body accelerometer Signals
- 1 variable for  "FreqOfGravityAccMagMean" ->  Mean Value of the Magnitude of Gravity accelerometer Signals
- 1 variable for "FreqOfGravityAccMagSTD" ->  standard deviation of the Magnitude of Gravity accelerometer Signals
- 1 variable for "FreqOfBodyAccJerkMagMean" ->  Mean Value of the Magnitude of the Body Gyroscope Jerk Signals
- 1 variable for "FreqOfBodyAccJerkMagSTD"  -> standard deviation ofthe Magnitude of Body Gyroscope Jerk Signals       
- 1 variable for "FreqOfBodyGyroMagMean" -> Mean Value of the Magnitude of Gyroscope Signals
- 1 variable for "FreqOfBodyGyroMagSTD"-> standard deviation ofthe Magnitude of Gyroscope Signals
- 1 variable for FreqOfBodyGyroJerkMagMean" -> Mean Value ofthe Body Gyroscope Jerk Signals 
- 1 variable for "FreqOfBodyGyroJerkMagSTD" -> standard deviation of the BodyGyroscope Jerk Signals 
