# Libasm 🤖

このプロジェクトは、42Cursus専門課題のプロジェクトの一つです。<br>
目的は、C言語の標準ライブラリ関数の一部を **x86-64アセンブリ** で再実装し、低レイヤーの理解とアセンブリの基礎を体験することにあります。

## Usage 💻

### 1.ビルド
```bash
make
```

### 2.コンパイル
```bash
cc -no-pie -I includes main.c libasm.a
```

### 3.実行
```bash
./a.out
```

## Points Learned 📋
- アセンブリにおける基本的な命令（mov, cmp, jmp, retなど）
- System V ABIに基づいたレジスタ渡しの呼び出し規約（rdi, rsi, rdxなど）
- syscallを使ったwrite, readの実装とerrnoの明示的な設定
- Cとの連携におけるnasmビルドとMakefileの構成
- アセンブリとCを組み合わせたビルドフローの理解
- プリプロセス~リンキングまでのコンパイルフロー
- Intel記法とAT&T記法について