#!/bin/bash

# Part 1 - Organs
WEIGHTS_URL_1="https://zenodo.org/record/6802342/files/Task251_TotalSegmentator_part1_organs_1139subj.zip"
WEIGHTS_ZIP_1="Task251_TotalSegmentator_part1_organs_1139subj.zip"
wget --directory-prefix ${WEIGHTS_DIR} ${WEIGHTS_URL_1}
unzip ${WEIGHTS_DIR}${WEIGHTS_ZIP_1} -d ${WEIGHTS_DIR}
rm ${WEIGHTS_DIR}${WEIGHTS_ZIP_1}

# Part 2 - Vertebrae
WEIGHTS_URL_2="https://zenodo.org/record/6802358/files/Task252_TotalSegmentator_part2_vertebrae_1139subj.zip"
WEIGHTS_ZIP_2="Task252_TotalSegmentator_part2_vertebrae_1139subj.zip"
wget --directory-prefix ${WEIGHTS_DIR} ${WEIGHTS_URL_2}
unzip ${WEIGHTS_DIR}${WEIGHTS_ZIP_2} -d ${WEIGHTS_DIR}
rm ${WEIGHTS_DIR}${WEIGHTS_ZIP_2}

# Part 3 - Cardiac
WEIGHTS_URL_3="https://zenodo.org/record/6802360/files/Task253_TotalSegmentator_part3_cardiac_1139subj.zip"
WEIGHTS_ZIP_3="Task253_TotalSegmentator_part3_cardiac_1139subj.zip"
wget --directory-prefix ${WEIGHTS_DIR} ${WEIGHTS_URL_3}
unzip ${WEIGHTS_DIR}${WEIGHTS_ZIP_3} -d ${WEIGHTS_DIR}
rm ${WEIGHTS_DIR}${WEIGHTS_ZIP_3}

# Part 4 - Muscles
WEIGHTS_URL_4="https://zenodo.org/record/6802366/files/Task254_TotalSegmentator_part4_muscles_1139subj.zip"
WEIGHTS_ZIP_4="Task254_TotalSegmentator_part4_muscles_1139subj.zip"
wget --directory-prefix ${WEIGHTS_DIR} ${WEIGHTS_URL_4}
unzip ${WEIGHTS_DIR}${WEIGHTS_ZIP_4} -d ${WEIGHTS_DIR}
rm ${WEIGHTS_DIR}${WEIGHTS_ZIP_4}

# Part 5 - Ribs
WEIGHTS_URL_5="https://zenodo.org/record/6802452/files/Task255_TotalSegmentator_part5_ribs_1139subj.zip"
WEIGHTS_ZIP_5="Task255_TotalSegmentator_part5_ribs_1139subj.zip"
wget --directory-prefix ${WEIGHTS_DIR} ${WEIGHTS_URL_5}
unzip ${WEIGHTS_DIR}${WEIGHTS_ZIP_5} -d ${WEIGHTS_DIR}
rm ${WEIGHTS_DIR}${WEIGHTS_ZIP_5}

# Part 6 - Task 256 for fast processing
WEIGHTS_URL_6="https://zenodo.org/record/6802052/files/Task256_TotalSegmentator_3mm_1139subj.zip"
WEIGHTS_ZIP_6="Task256_TotalSegmentator_3mm_1139subj.zip"
wget --directory-prefix ${WEIGHTS_DIR} ${WEIGHTS_URL_6}
unzip ${WEIGHTS_DIR}${WEIGHTS_ZIP_6} -d ${WEIGHTS_DIR}
rm ${WEIGHTS_DIR}${WEIGHTS_ZIP_6}
