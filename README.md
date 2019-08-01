This is a Rscript for caculating the F2 population chi-square and checking if the segregation fit 3:1.

It's just for training of a starter like me. I don't think anyone will use it.

## Usage

$$
χ_c^2=\sum_i\frac{( | O i - E i | - 0.5 )^2}{E i}
$$

```shell
Rscript kafang.r filename1 filename2 ... filenameX
```

Format of the input files:

| Line | phenotype1 | phenotype2 |
| ---- | ---------- | ---------- |
| F2-1 | 252        | 83         |
| F2-2 | 55         | 200        |
| ...  | ...        | ...        |

Format of the output files:

filename: `filenamechisrquare.txt`

|      | phenotype1 | phenotype2 | chisquare           | fitness    |
| ---- | ---------- | ---------- | ------------------- | ---------- |
| F2-1 | 252        | 83         | 0.00895522388059702 | TRUE       |
| F2-2 | 55         | 200        | 1.60130718954248    | TRUE       |
| ...  | ...        | ...        | Chi-square          | TRUE/FALSE |


