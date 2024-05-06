// The 'token_f3_vc.aleo' program.
program token_f3_vc.aleo;

function hello:
    input r0 as u32.public;
    input r1 as u32.private;
    add r0 r1 into r2;
    output r2 as u32.private;
