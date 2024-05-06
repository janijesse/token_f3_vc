// The 'token_f3_vc' program.
program token_f3_vc.aleo {
    transition main(public a: u32, b: u32) -> u32 {
        let c: u32 = a + b;
        return c;
    }
       record Token {
        owner: address,
        amount: u64,
    }

    transition mint(owner: address, amount: u64) -> Token {
        return Token {
            owner: owner,
            amount: amount,
        };
    }

    transition transfer(token: Token, to: address, amount: u64) -> (Token, Token) {
        let difference: u64 = token.amount - amount;

        let remaining: Token = Token {
            owner: token.owner,
            amount: difference,
        };

        let transferred: Token = Token {
            owner: to,
            amount: amount,
        };

        return (transferred, remaining);
    }
}
