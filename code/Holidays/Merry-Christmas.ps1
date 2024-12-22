$chars = "Merry Christmas "

for ($y = 15; $y -ge -14; $y--) {
    $line = ""
    for ($x = -30; $x -lt 30; $x++) {

        $exprLeft = [math]::Pow((([math]::Pow($x * 0.05, 2)) + ([math]::Pow($y * 0.1, 2)) - 1), 3)
        $exprRight = [math]::Pow(($x * 0.05), 2) * [math]::Pow(($y * 0.1), 3)
        if ($exprLeft -le $exprRight) {
            $line += $chars[($x - $y) % $chars.Length]
        }
        else {
            $line += " "
        }
    }
    Write-Output $line
}