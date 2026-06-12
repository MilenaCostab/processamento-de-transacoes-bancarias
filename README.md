# 🏦 Processamento de Transações Bancárias — COBOL MVS

Programa COBOL  rodando no **MVS 3.8j (TK5)**.

Lê arquivos de clientes e transações bancárias, realiza **MATCH/MERGE** e aplica créditos/débitos nos saldos, gerando relatório de estatísticas e arquivo de erros.

---

## 🛠 Tecnologias Utilizadas

- **Linguagem:** COBOL ANS 68

- **Compilador:** IBM CB545 V2 LVL78 (1972)

- **Sistema Operacional:** MVS 3.8j — TK5

- **Emulador:** Hercules 4.9.1 SDL

- **Host:** Ubuntu 24.04

---

## ⚙️ Funcionamento

- **SORT** — Ordena os arquivos de clientes e transações por ID

- **MATCH/MERGE** — Compara os dois arquivos registro a registro

- **Crédito (C)** — Soma o valor ao saldo do cliente

- **Débito (D)** — Subtrai o valor do saldo do cliente

- **Erros** — Registra transações sem cliente, tipo inválido, valor zero ou saldo insuficiente

- **Estatísticas** — Exibe totais ao final do processamento

---

## ✅ Validações Implementadas

- Tipo de transação inválido (diferente de C ou D)

- Valor de transação zerado

- Saldo insuficiente para débito

- Transação sem cliente correspondente

---

## 📁 Estrutura do Projeto

- **BANK005.cbl** — Programa COBOL principal

- **jcl/BANKJOB5.jcl** — SORT + compilação + execução

- **jcl/CRIAARQ.jcl** — Criação dos datasets no MVS

- **jcl/COMPILA.jcl** — Compilação isolada

- **jcl/EXEC01.jcl** — Execução isolada

---

## 📊 Resultado da Execução

- **Clientes processados:** 000003

- **Transações processadas:** 000003

- **Créditos processados:** 000001

- **Débitos processados:** 000002

- **Erros encontrados:** 000000

---

## 📌 Autora

**Milena Costa** 
