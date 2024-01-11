export XLA_PYTHON_CLIENT_PREALLOCATE=false && \
export XLA_PYTHON_CLIENT_MEM_FRACTION=.05 && \
python async_sac_state_sim.py "$@" \
    --actor \
    --render \
    --env PandaPickCube-v0 \
    --exp_name=serl_dev_sim_test \
    --seed 0 \
    --random_steps 1000 \
    --training_starts 1000 \
    --utd_ratio 8 \
    --batch_size 256 \
    --eval_period 2000 \
    --debug
