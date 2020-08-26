
# Codebook for run_analysis.R
Created with the dataMaid package.



Data report overview
====================

The dataset examined has the following dimensions:

<table style="width:47%;">
<colgroup>
<col style="width: 34%" />
<col style="width: 12%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Number of observations</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of variables</td>
<td style="text-align: right;">68</td>
</tr>
</tbody>
</table>

What is this data?
==================

Experiments have been carried out with a group of 30 volunteers within
an age bracket of 19-48 years. Each person performed six activities
(WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING,
LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using
its embedded accelerometer and gyroscope, they captured 3-axial linear
acceleration and 3-axial angular velocity at a constant rate of 50Hz.
The experiments have been video-recorded to label the data manually. The
obtained dataset has been randomly partitioned into two sets, where 70%
of the volunteers was selected for generating the training data and 30%
the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain
signals (prefix ‘t’ to denote time) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the acceleration signal was then separated into body
and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and
tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional
signals were calculated using the Euclidean norm (tBodyAccMag,
tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ,
fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the ‘f’ to
indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for
each pattern:  
‘-XYZ’ is used to denote 3-axial signals in the X, Y and Z directions.

Data transformations
====================

The test and training data sets have been combined into one set for
simplicity, resulting in a combined amount of observations. The subjects
and activity data has also been added to the same data set, resulting in
an added column for each variable, based on the tidy data principle that
each variable must have its own column. Each activity was originally
recorded as a number ranging from 1 through 6 that corresponded with the
activity name, so the numbers have been replaced with the activity name
to make the observations more immediately readable.

The total amount of variables was originally 563, but we are only
concerned with the mean and standard deviation observations, so only 68
were retained. Additionally, each subject had originally done multiple
instances of each activity, which led to the very large observation
count of 10,299. The rules of tidy data require that each observation
has its own row, so the observations for each subject’s activity has
been reduced down to its average, resulting in one row for each
observation. Thus, there is a far lesser observation count of 180, at 6
activities for each of the 30 subjects.

Data names
==========

To make things comply with tidy data principles, the activity names were
changed to lower-case, and had the underscores "\_" removed. In keeping
with the same principles, the variable names have had their original
parentheses “()” removed for readability. However, uppercase letters
were retained for the variables due to the fact that the many different
words in each variable were more easily readable when the first letter
of each word was capitalized.

Codebook summary table
======================

<table>
<colgroup>
<col style="width: 7%" />
<col style="width: 29%" />
<col style="width: 10%" />
<col style="width: 9%" />
<col style="width: 8%" />
<col style="width: 33%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Label</th>
<th style="text-align: left;">Variable</th>
<th style="text-align: left;">Class</th>
<th style="text-align: right;"># unique values</th>
<th style="text-align: center;">Missing</th>
<th style="text-align: left;">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#subject">subject</a></strong></td>
<td style="text-align: left;">integer</td>
<td style="text-align: right;">30</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">The identifying number of the subject in question.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#activity">activity</a></strong></td>
<td style="text-align: left;">character</td>
<td style="text-align: right;">6</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">The current activity of a subject.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccmeanx">tBodyAccmeanX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value mean of body accelerometer time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccmeany">tBodyAccmeanY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value mean of body accelerometer time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccmeanz">tBodyAccmeanZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value mean of body accelerometer time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccstdx">tBodyAccstdX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value standard deviation of body accelerometer time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccstdy">tBodyAccstdY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value standard deviation of body accelerometer time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccstdz">tBodyAccstdZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value standard deviation of body accelerometer time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tgravityaccmeanx">tGravityAccmeanX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value mean of gravity accelerometer time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tgravityaccmeany">tGravityAccmeanY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value mean of gravity accelerometer time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tgravityaccmeanz">tGravityAccmeanZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value mean of gravity accelerometer time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tgravityaccstdx">tGravityAccstdX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value standard deviation of gravity accelerometer time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tgravityaccstdy">tGravityAccstdY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value standard deviation of gravity accelerometer time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tgravityaccstdz">tGravityAccstdZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value standard deviation of gravity accelerometer time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccjerkmeanx">tBodyAccJerkmeanX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value mean of body accelerometer jerk time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccjerkmeany">tBodyAccJerkmeanY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value mean of body accelerometer jerk time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccjerkmeanz">tBodyAccJerkmeanZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value mean of body accelerometer jerk time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccjerkstdx">tBodyAccJerkstdX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value standard deviation of body accelerometer jerk time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccjerkstdy">tBodyAccJerkstdY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value standard deviation of body accelerometer jerk time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccjerkstdz">tBodyAccJerkstdZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value standard deviation of body accelerometer jerk time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyromeanx">tBodyGyromeanX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value mean of body gyroscope time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyromeany">tBodyGyromeanY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value mean of body gyroscope time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyromeanz">tBodyGyromeanZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value mean of body gyroscope time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrostdx">tBodyGyrostdX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value standard deviation of body gyroscope time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrostdy">tBodyGyrostdY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value standard deviation of body gyroscope time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrostdz">tBodyGyrostdZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value standard deviation of body gyroscope time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrojerkmeanx">tBodyGyroJerkmeanX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value mean of body gyroscope jerk time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrojerkmeany">tBodyGyroJerkmeanY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value mean of body gyroscope jerk time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrojerkmeanz">tBodyGyroJerkmeanZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value mean of body gyroscope jerk time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrojerkstdx">tBodyGyroJerkstdX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value standard deviation of body gyroscope jerk time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrojerkstdy">tBodyGyroJerkstdY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value standard deviation of body gyroscope jerk time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrojerkstdz">tBodyGyroJerkstdZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value standard deviation of body gyroscope jerk time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccmagmean">tBodyAccMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of body accelerometer time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccmagstd">tBodyAccMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of body accelerometer time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tgravityaccmagmean">tGravityAccMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of gravity accelerometer time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tgravityaccmagstd">tGravityAccMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of gravity accelerometer time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccjerkmagmean">tBodyAccJerkMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of body accelerometer jerk time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodyaccjerkmagstd">tBodyAccJerkMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of body accelerometer jerk time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyromagmean">tBodyGyroMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of body gyroscope time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyromagstd">tBodyGyroMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of body gyroscope time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrojerkmagmean">tBodyGyroJerkMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of body gyroscope jerk time domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#tbodygyrojerkmagstd">tBodyGyroJerkMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of body gyroscope jerk time domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccmeanx">fBodyAccmeanX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value mean of body accelerometer frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccmeany">fBodyAccmeanY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value mean of body accelerometer frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccmeanz">fBodyAccmeanZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value mean of body accelerometer frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccstdx">fBodyAccstdX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value standard deviation of body accelerometer frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccstdy">fBodyAccstdY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value standard deviation of body accelerometer frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccstdz">fBodyAccstdZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value standard deviation of body accelerometer frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccjerkmeanx">fBodyAccJerkmeanX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value mean of body accelerometer jerk frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccjerkmeany">fBodyAccJerkmeanY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value mean of body accelerometer jerk frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccjerkmeanz">fBodyAccJerkmeanZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value mean of body accelerometer jerk frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccjerkstdx">fBodyAccJerkstdX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value standard deviation of body accelerometer jerk frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccjerkstdy">fBodyAccJerkstdY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value standard deviation of body accelerometer jerk frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccjerkstdz">fBodyAccJerkstdZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value standard deviation of body accelerometer jerk frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodygyromeanx">fBodyGyromeanX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value mean of body gyroscope frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodygyromeany">fBodyGyromeanY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value mean of body gyroscope frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodygyromeanz">fBodyGyromeanZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value mean of body gyroscope frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodygyrostdx">fBodyGyrostdX</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">X value standard deviation of body gyroscope frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodygyrostdy">fBodyGyrostdY</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Y value standard deviation of body gyroscope frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodygyrostdz">fBodyGyrostdZ</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Z value standard deviation of body gyroscope frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccmagmean">fBodyAccMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of body accelerometer frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodyaccmagstd">fBodyAccMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of body accelerometer frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodybodyaccjerkmagmean">fBodyBodyAccJerkMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of body accelerometer jerk frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodybodyaccjerkmagstd">fBodyBodyAccJerkMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of body accelerometer jerk frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodybodygyromagmean">fBodyBodyGyroMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of body gyroscope frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodybodygyromagstd">fBodyBodyGyroMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of body gyroscope frequency domain.</td>
</tr>
<tr class="odd">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodybodygyrojerkmagmean">fBodyBodyGyroJerkMagmean</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude mean of body gyroscope jerk frequency domain.</td>
</tr>
<tr class="even">
<td style="text-align: left;"></td>
<td style="text-align: left;"><strong><a href="#fbodybodygyrojerkmagstd">fBodyBodyGyroJerkMagstd</a></strong></td>
<td style="text-align: left;">numeric</td>
<td style="text-align: right;">180</td>
<td style="text-align: center;">0.00 %</td>
<td style="text-align: left;">Magnitude standard deviation of body gyroscope jerk frequency domain.</td>
</tr>
</tbody>
</table>

Variable list
=============

subject
-------

<table style="width:50%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 13%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">integer</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">30</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">15.5</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">8; 23</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">1; 30</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-1-subject-1.png)

activity
--------

<table style="width:53%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 16%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">character</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">6</td>
</tr>
<tr class="even">
<td style="text-align: left;">Mode</td>
<td style="text-align: right;">“laying”</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-2-activity-1.png)

-   Observed factor levels: "laying", "sitting", "standing", "walking",
    "walkingdownstairs", "walkingupstairs".

tBodyAccmeanX
-------------

<table style="width:54%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 18%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">0.28</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">0.27; 0.28</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">0.22; 0.3</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-3-tBodyAccmeanX-1.png)

tBodyAccmeanY
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.02</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.02; -0.01</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.04; 0</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-4-tBodyAccmeanY-1.png)

tBodyAccmeanZ
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.11</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.11; -0.1</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.15; -0.08</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-5-tBodyAccmeanZ-1.png)

tBodyAccstdX
------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.75</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.63</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-6-tBodyAccstdX-1.png)

tBodyAccstdY
------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.51</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.94; -0.03</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.62</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-7-tBodyAccstdY-1.png)

tBodyAccstdZ
------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.65</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.95; -0.23</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.61</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-8-tBodyAccstdZ-1.png)

tGravityAccmeanX
----------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">0.92</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">0.84; 0.94</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.68; 0.97</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-9-tGravityAccmeanX-1.png)

tGravityAccmeanY
----------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.13</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.23; 0.09</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.48; 0.96</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-10-tGravityAccmeanY-1.png)

tGravityAccmeanZ
----------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">0.02</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.12; 0.15</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.5; 0.96</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-11-tGravityAccmeanZ-1.png)

tGravityAccstdX
---------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.97</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.95</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; -0.83</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-12-tGravityAccstdX-1.png)

tGravityAccstdY
---------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.96</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.97; -0.94</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; -0.64</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-13-tGravityAccstdY-1.png)

tGravityAccstdZ
---------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.95</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.92</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; -0.61</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-14-tGravityAccstdZ-1.png)

tBodyAccJerkmeanX
-----------------

<table style="width:54%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 18%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">0.08</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">0.07; 0.08</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">0.04; 0.13</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-15-tBodyAccJerkmeanX-1.png)

tBodyAccJerkmeanY
-----------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">0.01</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">0; 0.01</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.04; 0.06</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-16-tBodyAccJerkmeanY-1.png)

tBodyAccJerkmeanZ
-----------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">0</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.01; 0</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.07; 0.04</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-17-tBodyAccJerkmeanZ-1.png)

tBodyAccJerkstdX
----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.81</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.22</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.54</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-18-tBodyAccJerkstdX-1.png)

tBodyAccJerkstdY
----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.78</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.97; -0.15</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.36</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-19-tBodyAccJerkstdY-1.png)

tBodyAccJerkstdZ
----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.88</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.51</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.03</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-20-tBodyAccJerkstdZ-1.png)

tBodyGyromeanX
--------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.03</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.05; -0.02</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.21; 0.19</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-21-tBodyGyromeanX-1.png)

tBodyGyromeanY
--------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.07</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.09; -0.06</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.2; 0.03</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-22-tBodyGyromeanY-1.png)

tBodyGyromeanZ
--------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">0.09</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">0.07; 0.1</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.07; 0.18</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-23-tBodyGyromeanZ-1.png)

tBodyGyrostdX
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.79</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.97; -0.44</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.27</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-24-tBodyGyrostdX-1.png)

tBodyGyrostdY
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.8</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.42</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.48</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-25-tBodyGyrostdY-1.png)

tBodyGyrostdZ
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.8</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.31</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.56</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-26-tBodyGyrostdZ-1.png)

tBodyGyroJerkmeanX
------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.1</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.1; -0.09</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.16; -0.02</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-27-tBodyGyroJerkmeanX-1.png)

tBodyGyroJerkmeanY
------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.04</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.05; -0.04</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.08; -0.01</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-28-tBodyGyroJerkmeanY-1.png)

tBodyGyroJerkmeanZ
------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.05</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.06; -0.05</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.09; -0.01</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-29-tBodyGyroJerkmeanZ-1.png)

tBodyGyroJerkstdX
-----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.84</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.46</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.18</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-30-tBodyGyroJerkstdX-1.png)

tBodyGyroJerkstdY
-----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.89</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.59</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.3</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-31-tBodyGyroJerkstdY-1.png)

tBodyGyroJerkstdZ
-----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.86</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.47</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.19</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-32-tBodyGyroJerkstdZ-1.png)

tBodyAccMagmean
---------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.48</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.09</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.64</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-33-tBodyAccMagmean-1.png)

tBodyAccMagstd
--------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.61</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.94; -0.21</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.43</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-34-tBodyAccMagstd-1.png)

tGravityAccMagmean
------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.48</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.09</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.64</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-35-tGravityAccMagmean-1.png)

tGravityAccMagstd
-----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.61</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.94; -0.21</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.43</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-36-tGravityAccMagstd-1.png)

tBodyAccJerkMagmean
-------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.82</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.25</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.43</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-37-tBodyAccJerkMagmean-1.png)

tBodyAccJerkMagstd
------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.8</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.22</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.45</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-38-tBodyAccJerkMagstd-1.png)

tBodyGyroMagmean
----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.66</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.95; -0.22</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.98; 0.42</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-39-tBodyGyroMagmean-1.png)

tBodyGyroMagstd
---------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.74</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.95; -0.36</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.98; 0.3</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-40-tBodyGyroMagstd-1.png)

tBodyGyroJerkMagmean
--------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.86</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.99; -0.51</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.09</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-41-tBodyGyroJerkMagmean-1.png)

tBodyGyroJerkMagstd
-------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.88</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.58</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.25</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-42-tBodyGyroJerkMagstd-1.png)

fBodyAccmeanX
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.77</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.22</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.54</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-43-fBodyAccmeanX-1.png)

fBodyAccmeanY
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.59</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.95; -0.06</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.52</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-44-fBodyAccmeanY-1.png)

fBodyAccmeanZ
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.72</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.32</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.28</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-45-fBodyAccmeanZ-1.png)

fBodyAccstdX
------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.75</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.66</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-46-fBodyAccstdX-1.png)

fBodyAccstdY
------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.51</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.94; -0.08</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.56</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-47-fBodyAccstdY-1.png)

fBodyAccstdZ
------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.64</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.95; -0.27</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.69</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-48-fBodyAccstdZ-1.png)

fBodyAccJerkmeanX
-----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.81</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.28</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.47</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-49-fBodyAccJerkmeanX-1.png)

fBodyAccJerkmeanY
-----------------

<table style="width:56%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 19%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.78</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.97; -0.2</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.28</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-50-fBodyAccJerkmeanY-1.png)

fBodyAccJerkmeanZ
-----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.87</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.47</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.16</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-51-fBodyAccJerkmeanZ-1.png)

fBodyAccJerkstdX
----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.83</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.25</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.48</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-52-fBodyAccJerkstdX-1.png)

fBodyAccJerkstdY
----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.79</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.97; -0.17</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.35</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-53-fBodyAccJerkstdY-1.png)

fBodyAccJerkstdZ
----------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.9</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.54</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; -0.01</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-54-fBodyAccJerkstdZ-1.png)

fBodyGyromeanX
--------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.73</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.97; -0.34</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.47</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-55-fBodyGyromeanX-1.png)

fBodyGyromeanY
--------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.81</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.97; -0.45</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.33</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-56-fBodyGyromeanY-1.png)

fBodyGyromeanZ
--------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.79</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.26</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.49</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-57-fBodyGyromeanZ-1.png)

fBodyGyrostdX
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.81</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.48</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.2</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-58-fBodyGyrostdX-1.png)

fBodyGyrostdY
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.8</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.42</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.65</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-59-fBodyGyrostdY-1.png)

fBodyGyrostdZ
-------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.82</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.39</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.52</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-60-fBodyGyrostdZ-1.png)

fBodyAccMagmean
---------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.67</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.16</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.59</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-61-fBodyAccMagmean-1.png)

fBodyAccMagstd
--------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.65</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.95; -0.37</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.18</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-62-fBodyAccMagstd-1.png)

fBodyBodyAccJerkMagmean
-----------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.79</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.19</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.54</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-63-fBodyBodyAccJerkMagmean-1.png)

fBodyBodyAccJerkMagstd
----------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.81</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.27</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.32</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-64-fBodyBodyAccJerkMagstd-1.png)

fBodyBodyGyroMagmean
--------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.77</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.96; -0.41</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.99; 0.2</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-65-fBodyBodyGyroMagmean-1.png)

fBodyBodyGyroMagstd
-------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.77</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.95; -0.43</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-0.98; 0.24</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-66-fBodyBodyGyroMagstd-1.png)

fBodyBodyGyroJerkMagmean
------------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.88</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.58</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.15</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-67-fBodyBodyGyroJerkMagmean-1.png)

fBodyBodyGyroJerkMagstd
-----------------------

<table style="width:57%;">
<colgroup>
<col style="width: 36%" />
<col style="width: 20%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: left;">Feature</th>
<th style="text-align: right;">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: left;">Variable type</td>
<td style="text-align: right;">numeric</td>
</tr>
<tr class="even">
<td style="text-align: left;">Number of missing obs.</td>
<td style="text-align: right;">0 (0 %)</td>
</tr>
<tr class="odd">
<td style="text-align: left;">Number of unique values</td>
<td style="text-align: right;">180</td>
</tr>
<tr class="even">
<td style="text-align: left;">Median</td>
<td style="text-align: right;">-0.89</td>
</tr>
<tr class="odd">
<td style="text-align: left;">1st and 3rd quartiles</td>
<td style="text-align: right;">-0.98; -0.61</td>
</tr>
<tr class="even">
<td style="text-align: left;">Min. and max.</td>
<td style="text-align: right;">-1; 0.29</td>
</tr>
</tbody>
</table>

![](codebook_analysis_files/figure-markdown_github/Var-68-fBodyBodyGyroJerkMagstd-1.png)

Report generation information:

-   Created byusername: `Brandon`.

-   Report creation time: Tue Aug 25 2020 22:50:01

-   dataMaid v1.4.0 \[Pkg: 2019-12-10 from CRAN (R 4.0.2)\]

-   R version 4.0.2 (2020-06-22).

-   Platform: x86\_64-w64-mingw32/x64 (64-bit)(Windows 10 x64 (build
    19041)).

-   Function call:
    `dataMaid::makeDataReport(data = data, mode = c("summarize", "visualize",  "check"), smartNum = FALSE, file = "codebook_data.Rmd", checks = list( character = "showAllFactorLevels", factor = "showAllFactorLevels",  labelled = "showAllFactorLevels", haven_labelled = "showAllFactorLevels",  numeric = NULL, integer = NULL, logical = NULL, Date = NULL),  listChecks = FALSE, maxProbVals = Inf, codebook = TRUE, reportTitle = "Codebook for data")`
