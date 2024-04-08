gpu=$1
if [ -z $gpu ]; then
    gpu=1
fi
export CUDA_VISIBLE_DEVICES=$gpu
export DGLBACKEND=pytorch
# 
file=scripts/run_inference.py
python $file 'contigmap.contigs=[150-150]' inference.output_prefix=test_outputs/test inference.num_designs=10 \
    2>&1  </dev/null | tee $file.log
