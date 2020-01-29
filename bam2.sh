source ~/nduginec_evn3/bin/activate

GPU_2=2

~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.28
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.28 --am_loss=True
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.27
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.27 --am_loss=True
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.26
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.26 --am_loss=True
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.25
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.25 --am_loss=True
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.24
~/nduginec_evn3/bin/python ~/ml-diplom/main_bam.py --description bam_upd_sub --gpu $GPU_2 --pre_train 25 --train_left 0 --segments 500 --train_right 1000 --test_left 1001 --test_right 2592 --from_gradient_layer True  --epochs 150 --gradient_layer_name features.24 --am_loss=True