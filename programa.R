importe_tipo <- agr_exp %>%
  group_by(tipo) %>%
  summarise(n=n(),
            min_importe=min(importe_persona),
            p25_importe = quantile(importe_persona, probs = c(0.25)),
            mean_importe=mean(importe_persona),
            median_importe=median(importe_persona),
            p75_importe = quantile(importe_persona, probs = c(0.75)),
            max_importe=max(importe_persona))
write.csv(importe_tipo_cliente,file="outputs/importe_tipo_cliente.csv")
