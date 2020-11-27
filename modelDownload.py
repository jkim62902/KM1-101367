from transformers import AutoModel, AutoTokenizer, TFAutoModel

tr_models = ["monologg/koelectra-base-discriminator", "monologg/koelectra-small-discriminator", "monologg/koelectra-base-v2-discriminator", "monologg/koelectra-small-v2-discriminator", "monologg/koelectra-base-v3-discriminator", "monologg/koelectra-small-v3-discriminator", 'monologg/kobert', 'monologg/distilkobert', "hfl/chinese-electra-180g-large-discriminator", "hfl/chinese-electra-180g-base-discriminator", "hfl/chinese-electra-180g-small-ex-discriminator"]


tf_models = ["bert-base-uncased", "bert-base-cased", "bert-large-uncased", "bert-large-cased", "bert-base-multilingual-uncased", "bert-base-multilingual-cased", "roberta-base", "roberta-large", "monologg/koelectra-base-v3-discriminator"]

#torch model
for tr_model in tr_models:
    tokenizer = AutoTokenizer.from_pretrained(tr_models)
    model = AutoModel.from_pretrained(tr_models)

#tf model
for tf_model in tf_models:
    tokenizer = AutoTokenizer.from_pretrained(tf_models)
    model = TFAutoModel.from_pretrained(tf_models)



