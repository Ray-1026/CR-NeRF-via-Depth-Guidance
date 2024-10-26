##generating videos of brandenburg_gate
CUDA_VISIBLE_DEVICES=0 python appearance_modification_video.py \
    --save_dir ./results/brandenburg_gate/ \
    --chunk 20480 --encode_a  --nerf_out_dim 64 --decoder_num_res_blocks 1\
    --example_image ./artworks \
    --scene_name ds4v2crnerf_artworks_2_brandenburg_gate \
    --ckpt_path results/brandenburg_gate/ckpts/train/exp1/last.ckpt
