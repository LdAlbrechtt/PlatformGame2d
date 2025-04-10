# 📜 Visão Geral
Jogo 2D de plataforma desenvolvido com **Godot 4.0**, apresentando mecânicas clássicas do gênero:  
- 🏃‍♂️ Movimentação fluida do personagem  
- 🪙 Sistema de coleta de itens  
- 🎥 Controle inteligente de câmera  
- 🎮 HUD informativo  

---

## 🛠️ Implementação Atual

### 🌌 Background com Parallax
| **Feature**            | **Descrição**                              |
|-------------------------|--------------------------------------------|
| Sistema de Profundidade | Efeito visual com múltiplas camadas        |
| Configuração            | Via `ParallaxBackground` e `ParallaxLayer` |
| Movimento Dinâmico      | Velocidades diferentes por camada          |

### 🎭 Animação do Personagem
- ✅ **Idle** (parado)  
- ✅ **Run** (correndo)  
- ✅ **Jump** (pulando)  
- 🔄 Transições suaves entre estados  
- 🖼️ Gerenciado por `AnimatedSprite2D`  

### 💰 Sistema de Moedas
| **Componente**         | **Função**                          |
|-------------------------|-------------------------------------|
| `Area2D`               | Detecção de colisão                |
| `CollisionShape2D`     | Área de coleta                     |
| `body_entered()`       | Evento de coleta                   |
| `Globals.coins`        | Variável global de pontuação       |

### 📷 Controle de Câmera
- 🎯 Segue o personagem com `Camera2D`  
- ✨ Movimento suavizado  
- 🚧 Limites de área configurados  

### 🎪 HUD (Interface)
| **Elemento**         | **Status**            | **Descrição**               |
|-----------------------|-----------------------|----------------------------|
| Contador de Moedas    | ✅ Funcional          | Exibe moedas coletadas      |
| Temporizador          | 🚧 Em desenvolvimento | Contagem regressiva         |
| Barra de Vida         | 🚧 Em desenvolvimento | Indicador visual           |

---

## 🚀 Próximos Passos
- 🎯 **Sistema de inimigos e dano**  
- 🧱 **Plataformas especiais**:  
  - Móveis  
  - Desaparecem  
  - Frágeis  
- 🔊 **Sistema de áudio**:  
  - Efeitos sonoros  
  - Trilha musical  
- 🖥️ **Menus e fluxo de jogo**  

---

## ✨ Conclusão
O projeto já conta com todas as mecânicas básicas de um jogo de plataforma 2D funcional. O foco atual está em expandir o sistema de gameplay e polir a experiência do jogador.
