package com.yftech.yfhome.utils;

import android.content.Context;
import android.os.Environment;
import com.yftech.yfhome.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;

/* JADX INFO: loaded from: classes.dex */
public class WallpaperUtils {
    private static final String OUTPUT_FILENAME = "Wallpaper.jpg";
    private static final String WallPaperOutputDir = Environment.getExternalStorageDirectory() + File.separator + "wallpaper" + File.separator;

    public static String bytesToHexString(byte[] bArr) {
        StringBuilder sb = new StringBuilder(BuildConfig.FLAVOR);
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static String getFileMD5(File file) throws Throwable {
        FileInputStream fileInputStream;
        FileInputStream fileInputStream2 = null;
        if (!file.isFile()) {
            return null;
        }
        byte[] bArr = new byte[1024];
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            fileInputStream = new FileInputStream(file);
            while (true) {
                try {
                    try {
                        int i = fileInputStream.read(bArr, 0, 1024);
                        if (i == -1) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i);
                    } catch (Exception e) {
                        e = e;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            try {
                                fileInputStream.close();
                            } catch (IOException e2) {
                                e2.printStackTrace();
                            }
                        }
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                }
                th = th;
                fileInputStream2 = fileInputStream;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                }
                throw th;
            }
            fileInputStream.close();
            try {
                fileInputStream.close();
            } catch (IOException e4) {
                e4.printStackTrace();
            }
            return bytesToHexString(messageDigest.digest());
        } catch (Exception e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static String getFileRoot(Context context) {
        File externalFilesDir;
        return (!Environment.getExternalStorageState().equals("mounted") || (externalFilesDir = context.getExternalFilesDir(null)) == null) ? context.getFilesDir().getAbsolutePath() : externalFilesDir.getAbsolutePath();
    }

    public static String getWallPaperOutputPath() {
        File file = new File(WallPaperOutputDir);
        if (!file.exists()) {
            file.mkdirs();
        }
        return WallPaperOutputDir + OUTPUT_FILENAME;
    }
}
