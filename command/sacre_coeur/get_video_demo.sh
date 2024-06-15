##generating videos of sacre_coeur
CUDA_VISIBLE_DEVICES=5 python appearance_modification_video.py \
    --save_dir ../our_results/sacre_coeur/ \
    --chunk 102768 --encode_a --nerf_out_dim 64 --decoder_num_res_blocks 1\
    --example_image ./artworks \
    --scene_name ds4v2crnerf_artworks_2_sacre_coeur \
    --ckpt_path /home/raytsai/cv-final/our_results/sacre_coeur/ckpts/train/exp1/epoch=14-step=552480.ckpt
