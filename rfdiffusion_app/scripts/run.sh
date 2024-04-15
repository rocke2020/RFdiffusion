#
gpu=$1
if [ -z $gpu ]; then
    gpu=0
fi
export CUDA_VISIBLE_DEVICES=$gpu
export DGLBACKEND=pytorch
#
file=rfdiffusion_app/scripts/run_inference.py

# monomer test
# python $file 'contigmap.contigs=[150-150]' \
#     inference.output_prefix=test_outputs/binder_test \
#     inference.num_designs=10 \
#     inference.model_directory_path=/mnt/nas1/models/RFdiffusion \
#     inference.input_pdb=rfdiffusion_app/examples/input_pdbs/insulin_target.pdb \
#     2>&1  </dev/null | tee $file.log

# binder test
python $file \
    inference.input_pdb=rfdiffusion_app/examples/input_pdbs/insulin_target.pdb \
    'contigmap.contigs=[A1-150/0 6-9]' \
    'ppi.hotspot_res=[A59,A83,A91]' \
    denoiser.noise_scale_ca=0 \
    denoiser.noise_scale_frame=0 \
    inference.output_prefix=output/binder_insulin/binder_insulin_target \
    inference.num_designs=1 \
    inference.model_directory_path=/mnt/nas1/models/RFdiffusion \
    2>&1  </dev/null | tee $file.log
