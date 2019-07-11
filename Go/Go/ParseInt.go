i, err := strconv.Atoi("-42")
s := strconv.Itoa(-42)


b, err := strconv.ParseBool("true")
f, err := strconv.ParseFloat("3.1415", 64)
i, err := strconv.ParseInt("-42", 10, 64)
u, err := strconv.ParseUint("42", 10, 64)


s := "2147483647" // biggest int32
i64, err := strconv.ParseInt(s, 10, 32)
...
i := int32(i64)

s := strconv.FormatBool(true)
s := strconv.FormatFloat(3.1415, 'E', -1, 64)
s := strconv.FormatInt(-42, 16)
s := strconv.FormatUint(42, 16)


q := strconv.Quote("Hello, ??")
q := strconv.QuoteToASCII("Hello, ??")


const IntSize = intSize
var ErrRange = errors.New("value out of range")
var ErrSyntax = errors.New("invalid syntax")


func ParseInt(s string, base int, bitSize int) (i int64, err error)

