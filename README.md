````markdown
# Processamento de Transações Bancárias — COBOL MVS

Programa COBOL rodando no **MVS 3.8j (TK5)**.

Lê arquivos de clientes e transações bancárias, realiza MATCH/MERGE e aplica créditos/débitos nos saldos, gerando relatório de estatísticas e arquivo de erros.

---

## 🛠 Tecnologias

| Item | Detalhe |
|------|---------|
| Linguagem | COBOL ANS 68 |
| Compilador | IBM CB545 V2 LVL78 (1972) |
| Sistema | MVS 3.8j — TK5 |
| Emulador | Hercules 4.9.1 SDL |
| Host | Ubuntu 24.04 |

---

## 📁 Estrutura

```
├── BANK005.cbl          # Programa principal
└── jcl/
    ├── BANKJOB5.jcl     # SORT + compilação + execução
    ├── CRIAARQ.jcl      # Criação dos datasets no MVS
    ├── COMPILA.jcl      # Compilação isolada
    └── EXEC01.jcl       # Execução isolada
```

---

## ⚙️ Funcionamento

1. SORT ordena CLIENTES e TRX por ID
2. MATCH/MERGE compara os dois arquivos
3. Para cada match: aplica crédito (C) ou débito (D) no saldo
4. Sem match: grava cliente sem transação ou registra erro
5. Exibe estatísticas ao final

**Validações implementadas:**
- Tipo de transação inválido (≠ C ou D)
- Valor de transação zerado
- Saldo insuficiente para débito

---

## ✅ Resultado

```
CLIENTES PROCESSADOS.....: 000003
TRANSACOES PROCESSADAS...: 000003
CREDITOS PROCESSADOS.....: 000001
DEBITOS PROCESSADOS......: 000002
ERROS ENCONTRADOS........: 000000
FIM DO PROCESSAMENTO
```

---
## Autora
**Milena Costa**

## 
