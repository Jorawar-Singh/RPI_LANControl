mode(1)
//
// Demo of RPI_unlock.sci
//

PI_THREAD(myThread)
{
.. thread code
RPI_lock(0)
.. thread code continues
RPI_unlock(0)
}
//========= E N D === O F === D E M O =========//
