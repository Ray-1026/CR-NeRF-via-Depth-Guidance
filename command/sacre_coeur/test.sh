# Description: test script for CR-Nerf
# cd /mnt/cephfs/home/yangyifan/yangyifan/code/learnToSyLf/CR-NeRF
# source /mnt/cephfs/home/yangyifan/miniconda/etc/profile.d/conda.sh
# conda activate crnerf
# exp_name1="test_only/test" #replace with your own experiment name

exp_name1="train/exp1"
root_dir1="../dataset/sacre_coeur/"
save_dir1=../our_results/sacre_coeur #replace with your own save path
ckpt_path1="/home/raytsai/cv-final/our_results/sacre_coeur/epoch=14-step=552480.ckpt"
dataset_name1='phototourism'

nerf_out_dim1=64
model_mode1="1-1" 
decoder='linearStyle'  
decoder_num_res_blocks=1
img_downscale=4


#################### render image ####################
# CUDA_VISIBLE_DEVICES=0 python3 eval.py \
#   --root_dir $root_dir1 \
#   --save_dir $save_dir1 \
#   --dataset_name $dataset_name1 --scene_name $exp_name1 \
#   --split test_test --img_downscale $img_downscale \
#   --N_samples 256 --N_importance 256 --N_emb_xyz 15 \
#   --N_vocab 1500 --ckpt_path $ckpt_path1 \
#   --chunk 20480 --img_wh 320 240 --encode_a \
#   --decoder $decoder \
#   --decoder_num_res_blocks $decoder_num_res_blocks \
#   --nerf_out_dim $nerf_out_dim1 --use_depth

CUDA_VISIBLE_DEVICES=0  python3 eval_metric.py \
  --root_dir $root_dir1 \
  --save_dir $save_dir1 \
  --dataset_name $dataset_name1 --scene_name $exp_name1 \
  --split test_test --img_downscale $img_downscale \
  --img_wh 320 240