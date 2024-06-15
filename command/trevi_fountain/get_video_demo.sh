##generating videos of trevi_fountain
CUDA_VISIBLE_DEVICES=7 python appearance_modification_video.py \
    --save_dir ../our_results/trevi_fountain/  \
    --chunk 100960 --encode_a --nerf_out_dim 64 --decoder_num_res_blocks 1\
    --example_image ./artworks \
    --scene_name ds4v2crnerf_artworks_2_trevi_fountain \
    --ckpt_path /home/raytsai/cv-final/our_results/trevi_fountain/ckpts/train/exp1/epoch=14-step=1139910.ckpt
