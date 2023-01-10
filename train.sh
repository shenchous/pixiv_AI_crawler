python -m torch.distributed.launch --nproc_per_node=1 main.py \
--model convnext_tiny --drop_path 0.5 --input_size 384 \
--batch_size 48 --lr 2e-4 --update_freq 2 --nb_classes 2 \
--warmup_epochs 0 --epochs 60 --weight_decay 1e-8  \
--head_init_scale 0.001 --cutmix 0 --mixup 0 \
--save_ckpt_num 100 --dist_eval False \
--color_jitter 0.2 \
--finetune ckpt/convnext_tiny_22k_1k_384.pth \
--data_path /dataset/dzy/anime_ds \
--eval_data_path /dataset/dzy/anime_ds \
--imset ./imset/ \
--data_set json \
--output_dir output/tiny6
