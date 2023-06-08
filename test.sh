model_name=Autoformer
pred_len=100
python -u run_longExp.py \
--is_training 1 \
--root_path ./dataset/ \
--data_path exchange_rate.csv \
--model_id exchange_96_$pred_len \
--model $model_name \
--data custom \
--features M \
--seq_len 96 \
--label_len 48 \
--pred_len $pred_len \
--e_layers 2 \
--d_layers 1 \
--factor 3 \
--enc_in 8 \
--dec_in 8 \
--c_out 8 \
--des 'Exp' \
--itr 1 \
--train_epochs 1
