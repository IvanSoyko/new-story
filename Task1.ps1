# 1.	Получите справку о командлете справки
    Get-Help Get-Help
# 2.	Пункт 1, но детальную справку, затем только примеры
    Get-Help -Detailed
    Get-Help -Examples
# 3.	Получите справку о новых возможностях в PowerShell 4.0 (или выше)
    Get-help about_Windows_PowerShell_5.0
# 4.	Получите все командлеты установки значений
    Get-Command *set* -CommandType Cmdlet -All
    Get-Command *set* 
# 5.	Получить список команд работы с файлами
    Get-Command *item*
    Get-Command *file* 
# 6.	Получить список команд работы с объектами
    Get-Command *object* 
# 7.	Получите список всех псевдонимов
    Get-Alias
# 8.	Создайте свой псевдоним для любого командлета
    Set-Alias -Name Read -Value Get-Content
# 9.	Просмотреть список методов и свойств объекта типа процесс
    Get-Process | Get-Member
    Get-Process | Get-Member -Force
    Get-Process | Get-Member | Out-Host 
    Get-Process | Get-Member | Format-List
# 10.	Просмотреть список методов и свойств объекта типа строка
    Get-Member -InputObject System.string  
# 11.	Получить список запущенных процессов, данные об определённом процессе
    Get-Process
    Get-Process | Format-List
    Get-Process -Name System 
    Get-Process -Id 4 
# 12.	Получить список всех сервисов, данные об определённом сервисе
    Get-Service
    Get-Service -Name WSearch
    Get-Service -Name WSearch | Format-List *
# 13.	Получить список обновлений системы
    Get-HotFix  
    Get-WmiObject -Class win32_quickfixengineering  
# 14.	Узнайте, какой язык установлен для UI Windows
    Get-WinUserLanguageList
    [CultureInfo]::InstalledUICulture
# 15.	Получите текущее время и дату
    Get-Date
    [datetime]::now
# 16.	Сгенерируйте случайное число (любым способом)
    Get-Random
    Get-Random -Maximum 100 
# 17.	Выведите дату и время, когда был запущен процесс «explorer». Получите какой это день недели.
    (Get-Process -Name explorer).StartTime
    (Get-Process -Name explorer).StartTime.DayOfWeek
# 18.	Откройте любой документ в MS Word (не важно как) и закройте его с помощью PowerShell
    Stop-Process -Name WINWORD
# 19.	Подсчитать значение выражения S= . N – изменяемый параметр. Каждый шаг выводить в виде строки. (Пример: На шаге 2 сумма S равна 9)
$s = 0
for ($i=1; $i -le 5; $i++)
    {
    $s+=3*$i; Write-Host "На шаге $i сумма S равна $s"
    }
# 20.	Напишите функцию для предыдущего задания. Запустите её на выполнение.
