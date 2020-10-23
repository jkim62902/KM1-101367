from transformers import AutoTokenizer, TFAutoModel

#Bert
tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
model = TFAutoModel.from_pretrained("bert-base-uncased")
tokenizer = AutoTokenizer.from_pretrained("bert-base-cased")
model = TFAutoModel.from_pretrained("bert-base-cased")

tokenizer = AutoTokenizer.from_pretrained("bert-large-uncased")
model = TFAutoModel.from_pretrained("bert-large-uncased")
tokenizer = AutoTokenizer.from_pretrained("bert-large-cased")
model = TFAutoModel.from_pretrained("bert-large-cased")

tokenizer = AutoTokenizer.from_pretrained("bert-base-multilingual-uncased")
model = TFAutoModel.from_pretrained("bert-base-multilingual-uncased")
tokenizer = AutoTokenizer.from_pretrained("bert-base-multilingual-cased")
model = TFAutoModel.from_pretrained("bert-base-multilingual-cased")

#roBERTa
tokenizer = AutoTokenizer.from_pretrained("roberta-base")
model = TFAutoModel.from_pretrained("roberta-base")
tokenizer = AutoTokenizer.from_pretrained("roberta-large")
model = TFAutoModel.from_pretrained("roberta-large")


