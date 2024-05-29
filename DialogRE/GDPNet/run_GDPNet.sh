export BERT_BASE_DIR=../bert-base

python run_classifier.py   --task_name berts  --do_train --do_eval   --data_dir .   --vocab_file $BERT_BASE_DIR/vocab.txt   --bert_config_file $BERT_BASE_DIR/bert_config.json   --init_checkpoint $BERT_BASE_DIR/pytorch_model.bin  --train_batch_size 24   --learning_rate 3e-5   --num_train_epochs 30.0   --output_dir berts_f1 --label_lamda 0.05 --cls_label_lamda 0.25
#rm berts_f1/model_best.pt
#cp -r berts_f1 berts_f1c # 这里会有一个小问题，如果berts_f1c已经存在，那么下一条命令会出现路径错误。
#python run_classifier.py   --task_name bertsf1c --do_eval   --data_dir .   --vocab_file $BERT_BASE_DIR/vocab.txt   --bert_config_file $BERT_BASE_DIR/bert_config.json   --init_checkpoint $BERT_BASE_DIR/pytorch_model.bin  --train_batch_size 24   --learning_rate 3e-5   --num_train_epochs 20.0   --output_dir berts_f1c --label_lamda 0.25 --cls_label_lamda 0.25
#python evaluate.py --f1dev berts_f1/logits_dev.txt --f1test berts_f1/logits_test.txt --f1cdev berts_f1c/logits_dev.txt --f1ctest berts_f1c/logits_test.txt

