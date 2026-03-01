# 🤖 Projeto de Automação com Robot Framework

Projeto de **automação de testes web** utilizando **Robot Framework** e **SeleniumLibrary**, aplicando **Page Object Model (POM)**, screenshots automáticos em caso de falha e **relatórios customizados**.

---

## 🎯 Objetivo

Garantir a qualidade do fluxo de **login** do sistema, utilizando boas práticas de QA e uma arquitetura escalável, pronta para uso profissional e CI/CD.

---

## 🛠️ Tecnologias Utilizadas

- Robot Framework
- SeleniumLibrary
- Python 3.x
- Google Chrome
- ChromeDriver

---

## 📁 Estrutura do Projeto

```text
robot-desafio/
│
├── pages/
│   ├── BasePage.robot        # Ações base do navegador
│   └── LoginPage.robot       # Page Object da tela de login
│
├── resources/
│   └── Hooks.robot           # Hooks (screenshots em falha)
│
├── tests/
│   └── login_test.robot      # Casos de teste
│
├── output/
│   ├── log.html              # Log técnico (QA)
│   ├── report.html           # Relatório executivo
│   ├── output.xml            # Resultado da execução
│   └── *.png                 # Screenshots automáticos
│
└── README.md