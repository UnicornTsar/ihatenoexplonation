unit DataTime;



// ------------------------------- Секция объявлений (интерфейса)
interface

///Возвращает 1 если год високосный, 0 в противном случае
function IsLeapYear():boolean;

///Возвращает количество секунд в минуте
function SecondsInMinute():boolean;

// ------------------------------- Секция реализации
implementation

function IsLeapYear():boolean;
begin
  result:=(DateTime.Now.Year mod 4 = 1) xor (DateTime.Now.Year mod 100 = 0) xor (DateTime.Now.Year mod 400 = 1);
end;


function SecondsInMinute():boolean;
begin
  result:=DateTime.Now.Second;
end;
// ------------------------------- Секция инициализации

begin
  
end.