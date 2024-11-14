import {
    Table,
    Column,
    Model,
    DataType,
    CreatedAt,
    UpdatedAt,
    PrimaryKey,
    AutoIncrement
} from "sequelize-typescript";


@Table({ timestamps: false, tableName: "societe", modelName: "Societe" })
class Societe extends Model { 
    @PrimaryKey
    @AutoIncrement
    @Column({
        type: DataType.INTEGER,
    })
    declare id: number;

    @Column({
        type: DataType.STRING,
        allowNull: false,
    })
    declare nom: string;

    @Column({
        type: DataType.STRING,
        allowNull: true,
    })
    declare adresse: string;

    @Column({
        type: DataType.STRING,
        allowNull: true,
    })
    declare tel: string;

    @Column({
        type: DataType.INTEGER,
        allowNull: true,
        get() {
            const rawValue = this.getDataValue('codetva');
            return rawValue === null ? null : parseInt(rawValue.toString(), 10);
        }
    })
    declare codetva: number;

    @CreatedAt
    declare createdAt: Date;

    @UpdatedAt
    declare updatedAt: Date;
}

export default Societe;
