import sklearn.metrics as metrics


def __to_global(a, b):
    aa = []
    bb = []
    for index, i in enumerate(a):
        aa.extend(list(map(lambda x: x * (index + 1), i)))
    for index, i in enumerate(b):
        bb.extend(list(map(lambda x: x * (index + 1), i)))
    return aa, bb


def calculate_metric(classes, trust_answers, model_answer):
    f_1_score_text = ""
    for i in range(classes):
        f_1_score_text += "f_1_{}={:.5f} ".format(i,
                                                  metrics.f1_score(trust_answers[i],
                                                                   model_answer[i])
                                                  )
    recall_score_text = ""
    for i in range(classes):
        recall_score_text += "recall_{}={:.5f} ".format(i,
                                                        metrics.recall_score(trust_answers[i],
                                                                             model_answer[i])
                                                        )

    precision_score_text = ""
    for i in range(classes):
        precision_score_text += "precision_{}={:.5f} ".format(i,
                                                              metrics.precision_score(trust_answers[i],
                                                                                      model_answer[i])
                                                              )

    trust_answer, model_answer = __to_global(trust_answers, model_answer)

    f_1_score_text += "f_1_global={:.5f}".format(metrics.f1_score(trust_answer, model_answer, average='micro'))
    recall_score_text += "recall_global={:.5f}".format(
        metrics.recall_score(trust_answer, model_answer, average='micro'))
    precision_score_text += "precision_global={:.5f}".format(
        metrics.precision_score(trust_answer, model_answer, average='micro'))
    return f_1_score_text, recall_score_text, precision_score_text