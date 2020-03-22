
function prop {
    grep "${1}" ./runners.properties|cut -d'=' -f2
}

GPU=3

DESCRIPTION=FAIR_BIG_AM_TRAIN_FIRST_THEN_CLASSIFIER_ONLY_WITH_DEFAULT_LOSS

SCRIPT_NAME=main_first_attention.py

ALGORITHM_NAME=AM_AT_FIRST_THEN_CL_TWO_LOSS
PRE_TRAIN_EPOCHS=100

for epoch in $(seq 1 $(prop LOOP_COUNT))
do
  echo $epoch
  $(prop FULL_EXECUTOR_NAME) $(prop FULL_SCRIPT_PATH)/$SCRIPT_NAME\
    --description $DESCRIPTION\
    --run_name $(prop RUN_NAME)\
    --algorithm_name $ALGORITHM_NAME\
    --epochs $(prop EPOCHS_COUNT)\
    --pre_train $PRE_TRAIN_EPOCHS
    --gpu $GPU\
    --train_set $(prop TRAIN_SIZE)\
    --left_class_number $(prop LEFT_CLASS)\
    --right_class_number $(prop RIGHT_CLASS)
done
