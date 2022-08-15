int main()
{
    int a = 1, b = 2, c = 3, max;
    if (a > b && a > c)
        max = a;
    else if (b > a && b > c)
        max = b;
    else if (c > a && c > b)
        max = c;
    else
        max = a;
    return 0;
}