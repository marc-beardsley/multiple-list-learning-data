# Open Data For a Multiple Wordlist Learning Task
Open Data: EEG and behavioural data from a multiple wordlist learning task for demonstrating the backward and forward effects of testing (testing effects).

# Authors
- Marc Beardsley, Pompeu Fabra University, Barcelona, Spain
- Batuhan Sayis, Pompeu Fabra University, Barcelona, Spain
- Milica Vujovic, Pompeu Fabra University, Barcelona, Spain

Contact marc.beardsley@upf.edu with any comments or questions

# Description
Data is from a multiple-list learning task described in Pastötter et al. (2011) and Szpunar et al. (2008) to demonstrate both the backward and forward effects of testing. However, the number of lists in the current study is three rather than five as in the original studies.

Participants are asked to study a list of words, presented one-by-one, in preparation for a final cumulative test. There are three lists and sixty words in total. Each list has twenty words and is followed by two activities - a backwards counting activity and either a restudy or retrieval activity. After the third list activities, a 3-back task is completed prior to the taking of the final cumulative test. Participants type as many of the sixty words they can remember, in any order, during the final cumulative test (e.g. a free recall test).

In the retrieval condition, participants complete a recall activity after each backwards counting activity. For 60s, participants are instructed to type as many words they can recall, in any order, from the list preceding the activity.

In the restudy condition, participants complete a restudy activity after list 1 and list 2, and then a recall activity after list 3. For the restudy activity, participants are shown all 20 words from the preceding list for 60s and are instructed to study the list in preparation for the final test. After list 3, the recall activity is the same free recall test as in the retrieval condition.

# Behavioural data
The experimental setup/files can be found at https://zenodo.org/record/1120260#.Wjpva7T82Rs.

The behavioural data (e.g. free recall test answers for list three activity and free recall test answers for the final cumulative test) were collected using PsychoPy and compiled into a summary table. The final study included 46 participants (11 female and 35 male, age: M = 23.8, SD = 6.5).
- Summary of behavioural data: https://github.com/marc-beardsley/multiple-list-learning-data/blob/master/behavioural-data/Behavioural_data_summary_2017.csv

# EEG data
The electroencephalogram signals (EEG) were measured with an Emotiv EPOC® device which is an inexpensive EEG-based, non-invasive Brain-Computer Interface (BCI). The headset consists of a wireless amplifier and 16 wet saline electrodes which include 14 EEG channels and 2 reference electrodes. The electrodes are located and labeled according to the international 10-20 system and the locations of the electrodes are: AF3, F7, F3, FC5, T7, P7, O1, O2, P8, T8, FC6, F4, F8 and AF4. For the experiment, all the available electrodes of the Emotiv EPOC headset were used. The generated EEG data was digitized using the embedded 16-bit ADC with 128 Hz sampling frequency per channel. 

Data was recorded from a baseline prior to the showing of list 1 until the end of the list 3 activity. The data files provided are the raw EEG files (without preprocessing). The final study included xxxx participants as issues with the acquisition server resulted in xxxx trials being lost.
- Timing of experiment: xxxx


# License
This multiple learning list EEG and behavioural data is made available under the Open Data Commons Attribution License: http://opendatacommons.org/licenses/by/1.0. - A plain language summary of the license can be found at: https://opendatacommons.org/licenses/by/summary/. For more information see the LICENSE.txt file in this directory.

# References
Pastötter, B., Schicker, S., Niedernhuber, J., and Bäuml, K.-H. T. (2011). Retrieval during learning facilitates subsequent memory encoding. J. Exp. Psychol. Learn. Mem. Cogn. 37, 287–297. doi: 10.1037/a0021801

Peirce JW (2009) Generating stimuli for neuroscience using PsychoPy. Front. Neuroinform. 2:10. doi:10.3389/neuro.11.010.2008

Szpunar, K. K., McDermott, K. B., and Roediger, H. L. III (2008). Testing during study insulates against the buildup of proactive interference. J. Exp. Psychol. Learn. Mem. Cogn. 34, 1392–1399. doi: 10.1037/a0013082

# Citing these materials
Beardsley, M., Vujovic, M., and Sayis, B. (2017). Open Data For a Multiple Wordlist Learning Task.



