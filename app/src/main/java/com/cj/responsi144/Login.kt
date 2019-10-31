package com.cj.responsi144

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.ListView
import android.widget.Toast
import kotlinx.android.synthetic.main.activity_home.*
import kotlinx.android.synthetic.main.activity_login.*

class Login : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_home)


        btn_klik1.setOnClickListener(){
            val username = iduser.text.toString()
            val password = idpass.text.toString()
            if(username == "candra" && password == "12345"){
                intent = Intent (this,Home::class.java)
                startActivity(intent)
            }
            else {
                Toast.makeText(this@Login, "username atau pasword salah",   Toast.LENGTH_LONG).show()
            }}
        btn_klik2.setOnClickListener(){
            intent = Intent (this,Register::class.java)
            startActivity(intent)
        }
    }
}
