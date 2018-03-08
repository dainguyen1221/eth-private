# eth-private

Ethereum private chain setup

### Parity setup

```
$ cd parity

# Change config.toml and poa-spec.json as needed

$ bash clean.sh # Run this whenever you want to start over
$ bash start.sh # Need to install `parity` before you run this script
```

### Geth setup

```
$ cd parity

# Change genesis.json as needed. Don't touch extraData. Use `puppeth` if you want to change it.

$ bash clean.sh # Run this whenever you want to start over
$ bash start.sh
```

### License

MIT
