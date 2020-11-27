package com.example.testproject.PhoneAuthentication;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import android.Manifest;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Telephony;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

import com.example.testproject.MainActivity;
import com.example.testproject.R;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialPickerConfig;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;

import java.util.List;

public class PhoneAuthentication extends AppCompatActivity implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {

    private static final int REQUEST_PHONE_CALL = 1;
    private static final int RC_HINT = 2;
    private static final int READ_PHONE_STAE = 4;
    private TextView title;
    EditText phoneNUmber;
    Button Verify;
    GoogleApiClient apiClient;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_phone_authentication);
        init();
        checkPermission();
        getCreadenticalApiClient();
        VerifyPhoneNumber();
        requestHint();
    }

    private void init() {

        phoneNUmber = findViewById(R.id.phoneNumber);
        Verify = findViewById(R.id.Verify);
        title = findViewById(R.id.title);

    }

    private void VerifyPhoneNumber() {
        Verify.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String phone = phoneNUmber.getText().toString().trim();

                if (TextUtils.isEmpty(phone)) {
                    Toast.makeText(PhoneAuthentication.this, "Phone number can't be empty", Toast.LENGTH_SHORT).show();
                } else {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                        SubscriptionManager subscriptionManager = SubscriptionManager.from(getApplicationContext());
                        if (checkSelfPermission(Manifest.permission.READ_PHONE_STATE) != PackageManager.PERMISSION_GRANTED) {
                            // TODO: Consider calling
                            //    Activity#requestPermissions
                            ActivityCompat.requestPermissions(PhoneAuthentication.this, new String[]{Manifest.permission.READ_PHONE_STATE}, READ_PHONE_STAE);
                            // here to request the missing permissions, and then overriding
                            //   public void onRequestPermissionsResult(int requestCode, String[] permissions,
                            //                                          int[] grantResults)
                            // to handle the case where the user grants the permission. See the documentation
                            // for Activity#requestPermissions for more details.
                            return;
                        }
                        List<SubscriptionInfo> subsInfoList = subscriptionManager.getActiveSubscriptionInfoList();
                        Log.d("Test", "Current list = " + subsInfoList);

                        for (SubscriptionInfo subscriptionInfo : subsInfoList) {

                            String number = subscriptionInfo.getNumber();

                            Log.d("Test", " Number is  " + number);
                        }

                    }
                }

            }
        });
    }

    private void checkPermission() {
        if (ContextCompat.checkSelfPermission(PhoneAuthentication.this, Manifest.permission.CALL_PHONE) != PackageManager.PERMISSION_GRANTED) {
            ActivityCompat.requestPermissions(PhoneAuthentication.this, new String[]{Manifest.permission.CALL_PHONE}, REQUEST_PHONE_CALL);
        }
    }

    private void requestHint() {

        HintRequest hintRequest = new HintRequest.Builder()
                .setHintPickerConfig(new CredentialPickerConfig.Builder()
                        .setShowCancelButton(true)
                        .build())
                .setPhoneNumberIdentifierSupported(true)
                .build();

        PendingIntent intent =
                Auth.CredentialsApi.getHintPickerIntent(apiClient, hintRequest);
        try {
            startIntentSenderForResult(intent.getIntentSender(), RC_HINT, null, 0, 0, 0, new Bundle());
        } catch (IntentSender.SendIntentException e) {
            Log.e("Login", "Could not start hint picker Intent", e);
        }
    }

    private void getCreadenticalApiClient() {
        apiClient = new GoogleApiClient.Builder(getBaseContext())
                .addConnectionCallbacks(this)
                .enableAutoManage(PhoneAuthentication.this, this)
                .addApi(Auth.CREDENTIALS_API)
                .build();
    }

    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == RC_HINT) {
            if (resultCode == RESULT_OK) {
                Credential cred = data.getParcelableExtra(Credential.EXTRA_KEY);
                phoneNUmber.setText(cred.getId().substring(3));
                Intent intent = new Intent(PhoneAuthentication.this,MainActivity.class);
                startActivity(intent);
            }else {
                Toast.makeText(this, "This is a problem", Toast.LENGTH_SHORT).show();
            }
        }
    }

    @Override
    public void onConnected(@Nullable Bundle bundle) {

    }

    @Override
    public void onConnectionSuspended(int i) {

    }

    @Override
    public void onConnectionFailed(@NonNull ConnectionResult connectionResult) {

    }
}
